#include <iostream>
#include <immintrin.h>
#include <random>
#include <chrono>


static const uint8_t LOOKUP[256] = {
        0, 1, 1, 2, 1, 2, 2, 3,
        1, 2, 2, 3, 2, 3, 3, 4,
        1, 2, 2, 3, 2, 3, 3, 4,
        2, 3, 3, 4, 3, 4, 4, 5,
        1, 2, 2, 3, 2, 3, 3, 4,
        2, 3, 3, 4, 3, 4, 4, 5,
        2, 3, 3, 4, 3, 4, 4, 5,
        3, 4, 4, 5, 4, 5, 5, 6,
        1, 2, 2, 3, 2, 3, 3, 4,
        2, 3, 3, 4, 3, 4, 4, 5,
        2, 3, 3, 4, 3, 4, 4, 5,
        3, 4, 4, 5, 4, 5, 5, 6,
        2, 3, 3, 4, 3, 4, 4, 5,
        3, 4, 4, 5, 4, 5, 5, 6,
        3, 4, 4, 5, 4, 5, 5, 6,
        4, 5, 5, 6, 5, 6, 6, 7,
        1, 2, 2, 3, 2, 3, 3, 4,
        2, 3, 3, 4, 3, 4, 4, 5,
        2, 3, 3, 4, 3, 4, 4, 5,
        3, 4, 4, 5, 4, 5, 5, 6,
        2, 3, 3, 4, 3, 4, 4, 5,
        3, 4, 4, 5, 4, 5, 5, 6,
        3, 4, 4, 5, 4, 5, 5, 6,
        4, 5, 5, 6, 5, 6, 6, 7,
        2, 3, 3, 4, 3, 4, 4, 5,
        3, 4, 4, 5, 4, 5, 5, 6,
        3, 4, 4, 5, 4, 5, 5, 6,
        4, 5, 5, 6, 5, 6, 6, 7,
        3, 4, 4, 5, 4, 5, 5, 6,
        4, 5, 5, 6, 5, 6, 6, 7,
        4, 5, 5, 6, 5, 6, 6, 7,
        5, 6, 6, 7, 6, 7, 7, 8
};

static int popcnt64(const uint64_t* bitmap, const size_t size) {
    int result;
    for (size_t i = 0; i < size; ++i) {
        result += _mm_popcnt_u64(*(bitmap + i));
    }
    return result;
}

// see https://github.com/RoaringBitmap/CRoaring/blob/master/include/roaring/bitset_util.h#L265
static int popcnt256(const uint64_t* bitmap, const size_t size) {
    const __m256i *vectors = (const __m256i *)bitmap;
    const __m256i lookuppos = _mm256_setr_epi8(
            /* 0 */ 4 + 0, /* 1 */ 4 + 1, /* 2 */ 4 + 1, /* 3 */ 4 + 2,
            /* 4 */ 4 + 1, /* 5 */ 4 + 2, /* 6 */ 4 + 2, /* 7 */ 4 + 3,
            /* 8 */ 4 + 1, /* 9 */ 4 + 2, /* a */ 4 + 2, /* b */ 4 + 3,
            /* c */ 4 + 2, /* d */ 4 + 3, /* e */ 4 + 3, /* f */ 4 + 4,

            /* 0 */ 4 + 0, /* 1 */ 4 + 1, /* 2 */ 4 + 1, /* 3 */ 4 + 2,
            /* 4 */ 4 + 1, /* 5 */ 4 + 2, /* 6 */ 4 + 2, /* 7 */ 4 + 3,
            /* 8 */ 4 + 1, /* 9 */ 4 + 2, /* a */ 4 + 2, /* b */ 4 + 3,
            /* c */ 4 + 2, /* d */ 4 + 3, /* e */ 4 + 3, /* f */ 4 + 4);
    const __m256i lookupneg = _mm256_setr_epi8(
            /* 0 */ 4 - 0, /* 1 */ 4 - 1, /* 2 */ 4 - 1, /* 3 */ 4 - 2,
            /* 4 */ 4 - 1, /* 5 */ 4 - 2, /* 6 */ 4 - 2, /* 7 */ 4 - 3,
            /* 8 */ 4 - 1, /* 9 */ 4 - 2, /* a */ 4 - 2, /* b */ 4 - 3,
            /* c */ 4 - 2, /* d */ 4 - 3, /* e */ 4 - 3, /* f */ 4 - 4,

            /* 0 */ 4 - 0, /* 1 */ 4 - 1, /* 2 */ 4 - 1, /* 3 */ 4 - 2,
            /* 4 */ 4 - 1, /* 5 */ 4 - 2, /* 6 */ 4 - 2, /* 7 */ 4 - 3,
            /* 8 */ 4 - 1, /* 9 */ 4 - 2, /* a */ 4 - 2, /* b */ 4 - 3,
            /* c */ 4 - 2, /* d */ 4 - 3, /* e */ 4 - 3, /* f */ 4 - 4);
    const __m256i low_mask = _mm256_set1_epi8(0x0f);

    __m256i acc = _mm256_setzero_si256();
    for (size_t i = 0; i < size; i += 8) {
        const __m256i vector = _mm256_load_si256(vectors + i);
        const __m256i lo = _mm256_and_si256(vector, low_mask);
        const __m256i hi = _mm256_and_si256(_mm256_srli_epi16(vector, 4), low_mask);
        const __m256i popcnt1 = _mm256_shuffle_epi8(lookuppos, lo);
        const __m256i popcnt2 = _mm256_shuffle_epi8(lookupneg, hi);
        acc = _mm256_add_epi32(acc, _mm256_sad_epu8(popcnt1, popcnt2));
    }
    return (uint32_t)(_mm256_extract_epi32(acc, 0)) +
           (uint32_t)(_mm256_extract_epi32(acc, 1)) +
           (uint32_t)(_mm256_extract_epi32(acc, 2)) +
           (uint32_t)(_mm256_extract_epi32(acc, 3)) +
           (uint32_t)(_mm256_extract_epi32(acc, 4)) +
           (uint32_t)(_mm256_extract_epi32(acc, 5)) +
           (uint32_t)(_mm256_extract_epi32(acc, 6)) +
           (uint32_t)(_mm256_extract_epi32(acc, 7));
}

static int popcnt_lookup(const uint64_t* bitmap, const size_t size) {


}


int main() {

}