#include <iostream>
#include <immintrin.h>
#include <random>
#include <chrono>

// g++ -mfma -mavx -march=native -O3 mmul.cpp -o mmul.exe && ./mmul.exe

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// BENCHMARK SUPPORT
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

static void fill_matrix(float *array, const int size) {
    std::random_device rd;
    std::mt19937_64 mt(rd());
    std::uniform_real_distribution<float> reals(-1E6, 1E6);
    for (size_t i = 0; i < size * size; ++i) {
        array[i] = reals(mt);
    }
}

static float* new_matrix(const int size) {
    float* matrix = (float*)_aligned_malloc(size * size * sizeof(int), 32);
    fill_matrix(matrix, size);
    return matrix;
}

static void clear_matrix(float *matrix, const int size) {
    for (int i = 0; i < size * size; i += 8) {
        _mm256_store_ps(matrix + i, _mm256_setzero_ps());
    }
}

static float* new_empty_matrix(const int size) {
    float* matrix = (float*)_aligned_malloc(size * size * sizeof(int), 32);
    clear_matrix(matrix, size);
    return matrix;
}

static void print_matrix(const float * matrix, const int size) {
    for (int i = 0; i < size * size; ++i) {
        std::cout << matrix[i] << " ";
    }
    std::cout << std::endl;
}

template<typename MMUL>
static long long time(const MMUL &impl, const int size, const float* left, const float* right, float* result) {
    auto start = std::chrono::high_resolution_clock::now();
    impl(size, left, right, result);
    auto finish = std::chrono::high_resolution_clock::now();
    return std::chrono::duration_cast<std::chrono::nanoseconds>(finish - start).count();
}

template<typename MMUL>
static void throughput_benchmark(const std::string name, const int warmup, const int iterations, const int size, MMUL &impl) {
    float* left = new_matrix(size);
    float* right = new_matrix(size);
    float* result = new_empty_matrix(size);
    // warmup
    for (int i = 0; i < warmup; ++i) {
        impl(size, left, right, result);
        fill_matrix(left, size);
        fill_matrix(right, size);
        //print_matrix(result, size);
        clear_matrix(result, size);
    }
    // measurement
    long long nanos = 0;
    for (int i = 0; i < iterations; ++i) {
        nanos += time(impl, size, left, right, result);
        fill_matrix(left, size);
        fill_matrix(right, size);
        clear_matrix(result, size);
    }
    long double seconds = nanos / 1E9;
    long double throughput_ps = iterations / seconds;
    long double flops = 2.0 * size * size * size * iterations;
    long double cycles = 2.6 * nanos;
    long double flops_per_cycle = flops / cycles;

    std::cout << name << "," << size << "," << throughput_ps << "," << flops_per_cycle << std::endl;
    _aligned_free(left);
    _aligned_free(right);
    _aligned_free(result);
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// AVX IMPL
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

static void mmul_saxpy_avx(const int n, const float* left, const float* right, float* result) {
    int in = 0;
    for (int i = 0; i < n; ++i) {
        int kn = 0;
        for (int k = 0; k < n; ++k) {
            __m256 aik = _mm256_set1_ps(left[in + k]);
            int j = 0;
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
        }
        in += n;
    }
}


static void mmul_saxpy_avx_unrolled(const int n, const float* left, const float* right, float* result) {
    int in = 0;
    for (int i = 0; i < n; ++i) {
        int kn = 0;
        for (int k = 0; k < n; ++k) {
            int j = 0;
            __m256 aik = _mm256_set1_ps(left[in + k]);
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
        }
        in += n;
    }
}


static void mmul_saxpy_avx_unrolled_twice(const int n, const float* left, const float* right, float* result) {
    int in = 0;
    for (int i = 0; i < n; ++i) {
        int kn = 0;
        for (int k = 0; k < n; k += 8) {
            int j = 0;
            __m256 aik = _mm256_set1_ps(left[in + k]);
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
            aik = _mm256_set1_ps(left[in + ++k]);
            j = 0;
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
            aik = _mm256_set1_ps(left[in + ++k]);
            j = 0;
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
            aik = _mm256_set1_ps(left[in + ++k]);
            j = 0;
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
            aik = _mm256_set1_ps(left[in + ++k]);
            j = 0;
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
            aik = _mm256_set1_ps(left[in + ++k]);
            j = 0;
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
            aik = _mm256_set1_ps(left[in + ++k]);
            j = 0;
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
            aik = _mm256_set1_ps(left[in + ++k]);
            j = 0;
            for (; j < n; j += 64) {
                _mm256_store_ps(result + in + j,      _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j),      _mm256_load_ps(result + in + j)));
                _mm256_store_ps(result + in + j + 8,  _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 8),  _mm256_load_ps(result + in + j + 8)));
                _mm256_store_ps(result + in + j + 16, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 16), _mm256_load_ps(result + in + j + 16)));
                _mm256_store_ps(result + in + j + 24, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 24), _mm256_load_ps(result + in + j + 24)));
                _mm256_store_ps(result + in + j + 32, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 32), _mm256_load_ps(result + in + j + 32)));
                _mm256_store_ps(result + in + j + 40, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 40), _mm256_load_ps(result + in + j + 40)));
                _mm256_store_ps(result + in + j + 48, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 48), _mm256_load_ps(result + in + j + 48)));
                _mm256_store_ps(result + in + j + 56, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j + 56), _mm256_load_ps(result + in + j + 56)));
            }
            for (; j < n; j += 8) {
                _mm256_store_ps(result + in + j, _mm256_fmadd_ps(aik, _mm256_load_ps(right + kn + j), _mm256_load_ps(result + in + j)));
            }
            for (; j < n; ++j) {
                result[in + j] += left[in + k] * right[kn + j];
            }
            kn += n;
        }
        in += n;
    }
}


static void mmul_saxpy_avx_tiled(const int n, const float *left, const float *right, float *result) {
    int j_block_size = 256;
    int k_block_size = 16;
    for (int jj = 0; jj < n; jj += j_block_size) {
        for (int kk = 0; kk < n; kk += k_block_size) {
            for (int i = 0; i < n; ++i) {
                for (int j = jj; j < jj + j_block_size && j < n; j += j_block_size) {
                    __m256 sum = _mm256_load_ps(result + i * n + j);
                    for (int k = kk; k < kk + k_block_size && k < n; ++k) {
                        sum = _mm256_fmadd_ps(_mm256_set1_ps(left[i * n + k]), _mm256_load_ps(right + k * n + j), sum);
                    }
                    _mm256_store_ps(result + i * n + j, sum);
                }
            }
        }
    }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// SCALAR IMPL
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

static void mmul_saxpy(const int n, const float* left, const float* right, float* result) {
    int in = 0;
    for (int i = 0; i < n; ++i) {
        int kn = 0;
        for (int k = 0; k < n; ++k) {
            float aik = left[in + k];
            for (int j = 0; j < n; ++j) {
                result[in + j] += aik * right[kn + j];
            }
            kn += n;
        }
        in += n;
    }
}


static void mmul_blocked(const int n, const float* left, const float* right, float* result) {
    int BLOCK_SIZE = 8;
    for (int kk = 0; kk < n; kk += BLOCK_SIZE) {
        for (int jj = 0; jj < n; jj += BLOCK_SIZE) {
            for (int i = 0; i < n; i++) {
                for (int j = jj; j < jj + BLOCK_SIZE; ++j) {
                    float sum = result[i * n + j];
                    for (int k = kk; k < kk + BLOCK_SIZE; ++k) {
                        sum += left[i * n + k] * right[k * n + j]; // second read here is an unvectorisable strided access
                    }
                    result[i * n + j] = sum;
                }
            }
        }
    }
}


int main() {

    void (*saxpy)(const int, const float*, const float*, float*) = mmul_saxpy;
    void (*blocked)(const int, const float*, const float*, float*) = mmul_blocked;

    void (*saxpy_avx)(const int, const float*, const float*, float*) = mmul_saxpy_avx;
    void (*saxpy_avx_unrolled)(const int, const float*, const float*, float*) = mmul_saxpy_avx_unrolled;
    void (*saxpy_avx_unrolled_twice)(const int, const float*, const float*, float*) = mmul_saxpy_avx_unrolled_twice;

    void (*saxpy_avx_tiled)(const int, const float*, const float*, float*) = mmul_saxpy_avx_tiled;

    std::cout << "name" << "," << "size" << "," << "throughput (ops/s)" << "," << "flops/cycle" << std::endl;
    for (int i = 64; i <= 1024; i += 64) {
        throughput_benchmark("blocked", 10, 1000, i, blocked);
        throughput_benchmark("saxpy_avx_tiled", 10, 10000, i, mmul_saxpy_avx_tiled);
        throughput_benchmark("saxpy_avx", 10, 10000, i, saxpy_avx);
        throughput_benchmark("saxpy_avx_unrolled", 10, 10000, i, saxpy_avx_unrolled);
        throughput_benchmark("saxpy_avx_unrolled_twice", 10, 10000, i, saxpy_avx_unrolled_twice);
        throughput_benchmark("saxpy", 10, 1000, i, saxpy);
    }


    return 0;
}