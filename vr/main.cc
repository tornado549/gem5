#include <chrono>
#include <cstdint>
#include <immintrin.h>
#include <iostream>
#include <random> // Header for random number generator

// #define MOP
// #define AVX

#ifdef MOP
#include <gem5/m5ops.h>
#endif


void __reset_stats() {
#ifdef MOP
  m5_reset_stats(0, 0);
#endif
}

void __dump_stats() {
#ifdef MOP
  m5_dump_stats(0, 0);
#endif
}

using namespace std;

constexpr int64_t prolog = 8;
constexpr int64_t tile_size = prolog * 512 / 8 / sizeof(int64_t);

// #define AVX

// constexpr int64_t N = tile_size * 100000;
constexpr int64_t N = 128 * 10000;

void fillArrayRandomly(int arr[], int length) {
  mt19937 gen(1000);
  uniform_int_distribution<int> dis(0, length - 1);
  for (int i = 0; i < length; ++i) {
    arr[i] = dis(gen) % N;
  }
}

// Function to clear the cache
int64_t clearCache() {
  int64_t tmp = 0;

  int L3CACHE_SIZE_BYTE = 16 * 1024 * 1024;
  const int cacheSize =
      L3CACHE_SIZE_BYTE / 4; // Adjust this based on your system's cache size
  int *buffer = new int[cacheSize];
  fillArrayRandomly(buffer, cacheSize);

  for (int i = 0; i < cacheSize; ++i) {
    tmp += buffer[i];
  }
  cout << "[cache is cleared!]\n";

  delete[] buffer;

  return tmp;
}

alignas(64) int32_t A[N], B[N], C[N];

// Function to test and measure execution time
void testFunction(int64_t *sum) {
  for (int64_t i = 0; i < N; ++i) {
    *sum += A[B[i]];
  }
}

#ifdef AVX
// void testFunction_manual(int64_t *sum) {
//   const int VECLEN = 512 / 8 / sizeof(A[0]);

//   alignas(64) int32_t avx512_data[VECLEN];

//   for (int i = 0; i < N; i += VECLEN) {
//     __m512i indicesVec = _mm512_load_epi32((__m512i *)(B + i));
//     __m512i dataVec = _mm512_i32gather_epi32(indicesVec, A, sizeof(A[0]));
//     _mm512_store_epi32(C + i, dataVec);
//   }
// }

void testFunction_manual_avx512(int64_t *sum) {
  const int VECLEN = 512 / 8 / sizeof(A[0]);
  alignas(64) int avx2_data[VECLEN];
  for (int i = 0; i < N; i += VECLEN) {
    __m512i indicesVec = _mm512_load_epi32((__m512i *)(B + i));
    __m512i dataVec0 = _mm512_i32gather_epi32(indicesVec, A, sizeof(A[0]));
    _mm512_store_epi32(C + i, dataVec0);
    // *sum += _mm512_reduce_add_epi32(dataVec0);
  }
}

#endif


#define kernel(num, res) *res += num

#ifdef AVX
void show512Reg(__m512i &zmm) {
  auto y0 = _mm512_extracti32x8_epi32(zmm, 0);
  auto y1 = _mm512_extracti32x8_epi32(zmm, 1);
  cout << _mm256_extract_epi32(y0, 0) << endl;
  cout << _mm256_extract_epi32(y0, 1) << endl;
  cout << _mm256_extract_epi32(y0, 2) << endl;
  cout << _mm256_extract_epi32(y0, 3) << endl;
  cout << _mm256_extract_epi32(y0, 4) << endl;
  cout << _mm256_extract_epi32(y0, 5) << endl;
  cout << _mm256_extract_epi32(y0, 6) << endl;
  cout << _mm256_extract_epi32(y0, 7) << endl;
  cout << _mm256_extract_epi32(y1, 0) << endl;
  cout << _mm256_extract_epi32(y1, 1) << endl;
  cout << _mm256_extract_epi32(y1, 2) << endl;
  cout << _mm256_extract_epi32(y1, 3) << endl;
  cout << _mm256_extract_epi32(y1, 4) << endl;
  cout << _mm256_extract_epi32(y1, 5) << endl;
  cout << _mm256_extract_epi32(y1, 6) << endl;
  cout << _mm256_extract_epi32(y1, 7) << endl;
  cout << endl;
}
#endif

// try v reduce
// x86 寄存器数量太少，尝试 reduce add
// small block
// spill 少了，但是变成顺序执行
#define calculateFromVReg(zmm, kernel, sum, i)                                 \
  auto y0_##i = _mm512_extracti32x8_epi32(zmm, 0);                             \
  auto y1_##i = _mm512_extracti32x8_epi32(zmm, 1);                             \
  val0 = _mm256_extract_epi64(y0_##i, 0);                                      \
  val1 = _mm256_extract_epi64(y0_##i, 1);                                      \
  val2 = _mm256_extract_epi64(y0_##i, 2);                                      \
  val3 = _mm256_extract_epi64(y0_##i, 3);                                      \
  val4 = _mm256_extract_epi64(y0_##i, 4);                                      \
  val5 = _mm256_extract_epi64(y0_##i, 5);                                      \
  val6 = _mm256_extract_epi64(y0_##i, 6);                                      \
  val7 = _mm256_extract_epi64(y0_##i, 7);                                      \
  val8 = _mm256_extract_epi64(y1_##i, 0);                                      \
  val9 = _mm256_extract_epi64(y1_##i, 1);                                      \
  val10 = _mm256_extract_epi64(y1_##i, 2);                                     \
  val11 = _mm256_extract_epi64(y1_##i, 3);                                     \
  val12 = _mm256_extract_epi64(y1_##i, 4);                                     \
  val13 = _mm256_extract_epi64(y1_##i, 5);                                     \
  val14 = _mm256_extract_epi64(y1_##i, 6);                                     \
  val15 = _mm256_extract_epi64(y1_##i, 7);                                     \
  kernel(val0, sum);                                                           \
  kernel(val1, sum);                                                           \
  kernel(val2, sum);                                                           \
  kernel(val3, sum);                                                           \
  kernel(val4, sum);                                                           \
  kernel(val5, sum);                                                           \
  kernel(val6, sum);                                                           \
  kernel(val7, sum);                                                           \
  kernel(val8, sum);                                                           \
  kernel(val9, sum);                                                           \
  kernel(val10, sum);                                                          \
  kernel(val11, sum);                                                          \
  kernel(val12, sum);                                                          \
  kernel(val13, sum);                                                          \
  kernel(val14, sum);                                                          \
  kernel(val15, sum)

#define calculateFromVRegWithOneScalarReg(zmm, kernel, sum, i)                 \
  auto y0_##i = _mm512_extracti32x8_epi32(zmm, 0);                             \
  auto y1_##i = _mm512_extracti32x8_epi32(zmm, 1);                             \
  val = _mm256_extract_epi32(y0_##i, 0);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y0_##i, 1);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y0_##i, 2);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y0_##i, 3);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y0_##i, 4);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y0_##i, 5);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y0_##i, 6);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y0_##i, 7);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y1_##i, 0);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y1_##i, 1);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y1_##i, 2);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y1_##i, 3);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y1_##i, 4);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y1_##i, 5);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y1_##i, 6);                                       \
  kernel(val, sum);                                                            \
  val = _mm256_extract_epi32(y1_##i, 7);                                       \
  kernel(val, sum)

// TODO: compare to prefetch and original gather
#ifdef AVX
// for i64 element, tile_size = prolog * 8
// for i32 element, tile_size = prolog * 16

// 125ms，减小 block 的 大小，16 vreg -> 8 vreg
// 该 block 大小 为 paper 中的 optimal distance 的 一半
// 实际上，pipeline 中使用的 stagger 策略不同于 paper
// pipeline：ld B[i+2*ts], ld A[B[i+*ts]]
void pipeline_512_8_8vreg_reduce(int64_t *sum, const int prolog,
                                 const int tile_size) {
  // veclen: 512 bits, 64 bytes, 16 ints.
  // avx512 有 32 个 vreg
  // 前 8 个用于暂存间接访存的下标
  // 另 8 个用于执行 gather 操作，获取最终的数据
  // 因此，每个 tile 的大小为 8 个 vreg，即 8*512 bits = 8*64 bytes = 8*8 i64 =
  // 64 i64 目前假设 tile size 等于 prolog 的 size

  __m512i z0, z1, z2, z3, z4, z5, z6, z7, z16, z17, z18, z19, z20, z21, z22,
      z23;

  // prolog0  -> load
  // 512bits = 64bytes = 8i64, so stride is 8
  // 512bits = 64bytes = 8i32, so stride is 16
  z0 = _mm512_load_epi32((__m512i *)(B + 0));
  z1 = _mm512_load_epi32((__m512i *)(B + 16));
  z2 = _mm512_load_epi32((__m512i *)(B + 32));
  z3 = _mm512_load_epi32((__m512i *)(B + 48));
  z4 = _mm512_load_epi32((__m512i *)(B + 64));
  z5 = _mm512_load_epi32((__m512i *)(B + 80));
  z6 = _mm512_load_epi32((__m512i *)(B + 96));
  z7 = _mm512_load_epi32((__m512i *)(B + 112));

  // prolog1  -> gather, load

  z16 = _mm512_i32gather_epi32(z0, A, 4);
  z17 = _mm512_i32gather_epi32(z1, A, 4);
  z18 = _mm512_i32gather_epi32(z2, A, 4);
  z19 = _mm512_i32gather_epi32(z3, A, 4);
  z20 = _mm512_i32gather_epi32(z4, A, 4);
  z21 = _mm512_i32gather_epi32(z5, A, 4);
  z22 = _mm512_i32gather_epi32(z6, A, 4);
  z23 = _mm512_i32gather_epi32(z7, A, 4);

  // z16 的 gather 没完成，则 z0 不能再 load，存在 stall ？
  z0 = _mm512_load_epi32((__m512i *)(B + 128));
  z1 = _mm512_load_epi32((__m512i *)(B + 144));
  z2 = _mm512_load_epi32((__m512i *)(B + 160));
  z3 = _mm512_load_epi32((__m512i *)(B + 176));
  z4 = _mm512_load_epi32((__m512i *)(B + 192));
  z5 = _mm512_load_epi32((__m512i *)(B + 208));
  z6 = _mm512_load_epi32((__m512i *)(B + 224));
  z7 = _mm512_load_epi32((__m512i *)(B + 240));

  // stable -> compute, gather, load
  int64_t tile_id;
  for (tile_id = 0; tile_id < N / tile_size - 2; ++tile_id) {
    // using vreg to do computing
    _mm512_store_epi32(C + tile_id * tile_size + 0, z16);
    _mm512_store_epi32(C + tile_id * tile_size + 16, z17);
    _mm512_store_epi32(C + tile_id * tile_size + 32, z18);
    _mm512_store_epi32(C + tile_id * tile_size + 48, z19);
    _mm512_store_epi32(C + tile_id * tile_size + 64, z20);
    _mm512_store_epi32(C + tile_id * tile_size + 80, z21);
    _mm512_store_epi32(C + tile_id * tile_size + 96, z22);
    _mm512_store_epi32(C + tile_id * tile_size + 112, z23);

    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);

    z0 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 0));
    z1 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 16));
    z2 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 32));
    z3 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 48));
    z4 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 64));
    z5 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 80));
    z6 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 96));
    z7 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 112));
  }

  // epilog0  -> store, compute, gather
  for (; tile_id < N / tile_size - 1; ++tile_id) {
    // do computing
    _mm512_store_epi32(C + tile_id * tile_size + 0, z16);
    _mm512_store_epi32(C + tile_id * tile_size + 16, z17);
    _mm512_store_epi32(C + tile_id * tile_size + 32, z18);
    _mm512_store_epi32(C + tile_id * tile_size + 48, z19);
    _mm512_store_epi32(C + tile_id * tile_size + 64, z20);
    _mm512_store_epi32(C + tile_id * tile_size + 80, z21);
    _mm512_store_epi32(C + tile_id * tile_size + 96, z22);
    _mm512_store_epi32(C + tile_id * tile_size + 112, z23);

    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);
  }

  // epilog1  -> store, compute
  for (; tile_id < N / tile_size; ++tile_id) {
    // do computing
    _mm512_store_epi32(C + tile_id * tile_size + 0, z16);
    _mm512_store_epi32(C + tile_id * tile_size + 16, z17);
    _mm512_store_epi32(C + tile_id * tile_size + 32, z18);
    _mm512_store_epi32(C + tile_id * tile_size + 48, z19);
    _mm512_store_epi32(C + tile_id * tile_size + 64, z20);
    _mm512_store_epi32(C + tile_id * tile_size + 80, z21);
    _mm512_store_epi32(C + tile_id * tile_size + 96, z22);
    _mm512_store_epi32(C + tile_id * tile_size + 112, z23);
  }
}

void pipeline_512_8_8vreg_add_reduce(int64_t *sum, const int prolog,
                                     const int tile_size) {
  // veclen: 512 bits, 64 bytes, 16 ints.
  // avx512 有 32 个 vreg
  // 前 8 个用于暂存间接访存的下标
  // 另 8 个用于执行 gather 操作，获取最终的数据
  // 因此，每个 tile 的大小为 8 个 vreg，即 8*512 bits = 8*64 bytes = 8*8 i64 =
  // 64 i64 目前假设 tile size 等于 prolog 的 size

  __m512i z0, z1, z2, z3, z4, z5, z6, z7, z16, z17, z18, z19, z20, z21, z22,
      z23;
  __m512i z31;
  z31 = _mm512_xor_epi32(z31, z31);

  // prolog0  -> load
  {
    // 512bits = 64bytes = 8i64, so stride is 8
    // 512bits = 64bytes = 8i32, so stride is 16
    z0 = _mm512_load_epi32((__m512i *)(B + 0));
    z1 = _mm512_load_epi32((__m512i *)(B + 16));
    z2 = _mm512_load_epi32((__m512i *)(B + 32));
    z3 = _mm512_load_epi32((__m512i *)(B + 48));
    z4 = _mm512_load_epi32((__m512i *)(B + 64));
    z5 = _mm512_load_epi32((__m512i *)(B + 80));
    z6 = _mm512_load_epi32((__m512i *)(B + 96));
    z7 = _mm512_load_epi32((__m512i *)(B + 112));
  }

  // prolog1  -> gather, load
  {
    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);

    // z16 的 gather 没完成，则 z0 不能再 load，存在 stall ？
    z0 = _mm512_load_epi32((__m512i *)(B + 128));
    z1 = _mm512_load_epi32((__m512i *)(B + 144));
    z2 = _mm512_load_epi32((__m512i *)(B + 160));
    z3 = _mm512_load_epi32((__m512i *)(B + 176));
    z4 = _mm512_load_epi32((__m512i *)(B + 192));
    z5 = _mm512_load_epi32((__m512i *)(B + 208));
    z6 = _mm512_load_epi32((__m512i *)(B + 224));
    z7 = _mm512_load_epi32((__m512i *)(B + 240));
  }

  // stable -> compute, gather, load
  int64_t tile_id;
  for (tile_id = 0; tile_id < N / tile_size - 2; ++tile_id) {
    // using vreg to do computing
    z31 = _mm512_add_epi32(z31, z16);
    z31 = _mm512_add_epi32(z31, z17);
    z31 = _mm512_add_epi32(z31, z18);
    z31 = _mm512_add_epi32(z31, z19);
    z31 = _mm512_add_epi32(z31, z20);
    z31 = _mm512_add_epi32(z31, z21);
    z31 = _mm512_add_epi32(z31, z22);
    z31 = _mm512_add_epi32(z31, z23);
    *sum = _mm512_reduce_add_epi32(z31);

    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);

    z0 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 0));
    z1 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 16));
    z2 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 32));
    z3 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 48));
    z4 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 64));
    z5 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 80));
    z6 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 96));
    z7 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 112));
  }

  // epilog0  -> store, compute, gather
  for (; tile_id < N / tile_size - 1; ++tile_id) {
    // do computing
    z31 = _mm512_add_epi32(z31, z16);
    z31 = _mm512_add_epi32(z31, z17);
    z31 = _mm512_add_epi32(z31, z18);
    z31 = _mm512_add_epi32(z31, z19);
    z31 = _mm512_add_epi32(z31, z20);
    z31 = _mm512_add_epi32(z31, z21);
    z31 = _mm512_add_epi32(z31, z22);
    z31 = _mm512_add_epi32(z31, z23);
    *sum = _mm512_reduce_add_epi32(z31);

    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);
  }

  // epilog1  -> store, compute
  for (; tile_id < N / tile_size; ++tile_id) {
    // do computing
    z31 = _mm512_add_epi32(z31, z16);
    z31 = _mm512_add_epi32(z31, z17);
    z31 = _mm512_add_epi32(z31, z18);
    z31 = _mm512_add_epi32(z31, z19);
    z31 = _mm512_add_epi32(z31, z20);
    z31 = _mm512_add_epi32(z31, z21);
    z31 = _mm512_add_epi32(z31, z22);
    z31 = _mm512_add_epi32(z31, z23);
    *sum = _mm512_reduce_add_epi32(z31);
  }
}

// 147ms，不用 reduce add
void pipeline_512_8_8vreg_1sreg(int64_t *sum, const int prolog,
                                const int tile_size) {
  // veclen: 512 bits, 64 bytes, 16 ints.
  // avx512 有 32 个 vreg
  // 前 8 个用于暂存间接访存的下标
  // 另 8 个用于执行 gather 操作，获取最终的数据
  // 因此，每个 tile 的大小为 8 个 vreg，即 8*512 bits = 8*64 bytes = 8*8 i64 =
  // 64 i64 目前假设 tile size 等于 prolog 的 size

  __m512i z0, z1, z2, z3, z4, z5, z6, z7, z16, z17, z18, z19, z20, z21, z22,
      z23;

  // prolog0  -> load
  {
    // 512bits = 64bytes = 8longlong, so stride is 8
    z0 = _mm512_load_epi32((__m512i *)(B + 0));
    z1 = _mm512_load_epi32((__m512i *)(B + 16));
    z2 = _mm512_load_epi32((__m512i *)(B + 32));
    z3 = _mm512_load_epi32((__m512i *)(B + 48));
    z4 = _mm512_load_epi32((__m512i *)(B + 64));
    z5 = _mm512_load_epi32((__m512i *)(B + 80));
    z6 = _mm512_load_epi32((__m512i *)(B + 96));
    z7 = _mm512_load_epi32((__m512i *)(B + 112));
  }

  // 当前 promote 数据，仅用于执行读取的操作，如果需要写回呢？进一步做内存管理？

  // prolog1  -> gather, load
  {
    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);

    // z16 的 gather 没完成，则 z0 不能再 load，存在 stall ？
    z0 = _mm512_load_epi32((__m512i *)(B + 128));
    z1 = _mm512_load_epi32((__m512i *)(B + 144));
    z2 = _mm512_load_epi32((__m512i *)(B + 160));
    z3 = _mm512_load_epi32((__m512i *)(B + 176));
    z4 = _mm512_load_epi32((__m512i *)(B + 192));
    z5 = _mm512_load_epi32((__m512i *)(B + 208));
    z6 = _mm512_load_epi32((__m512i *)(B + 224));
    z7 = _mm512_load_epi32((__m512i *)(B + 240));
  }

  // stable   -> store, compute, gather, load
  int64_t tile_id;
  for (tile_id = 0; tile_id < N / tile_size - 2; ++tile_id) {
    // using vreg to do computing
    int32_t val;
    calculateFromVRegWithOneScalarReg(z16, kernel, sum, 0);
    calculateFromVRegWithOneScalarReg(z17, kernel, sum, 1);
    calculateFromVRegWithOneScalarReg(z18, kernel, sum, 2);
    calculateFromVRegWithOneScalarReg(z19, kernel, sum, 3);
    calculateFromVRegWithOneScalarReg(z20, kernel, sum, 4);
    calculateFromVRegWithOneScalarReg(z21, kernel, sum, 5);
    calculateFromVRegWithOneScalarReg(z22, kernel, sum, 6);
    calculateFromVRegWithOneScalarReg(z23, kernel, sum, 7);

    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);

    z0 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 0));
    z1 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 16));
    z2 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 32));
    z3 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 48));
    z4 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 64));
    z5 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 80));
    z6 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 96));
    z7 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 112));
  }

  // epilog0  -> store, compute, gather
  for (; tile_id < N / tile_size - 1; ++tile_id) {
    // do computing
    int32_t val;
    calculateFromVRegWithOneScalarReg(z16, kernel, sum, 0);
    calculateFromVRegWithOneScalarReg(z17, kernel, sum, 1);
    calculateFromVRegWithOneScalarReg(z18, kernel, sum, 2);
    calculateFromVRegWithOneScalarReg(z19, kernel, sum, 3);
    calculateFromVRegWithOneScalarReg(z20, kernel, sum, 4);
    calculateFromVRegWithOneScalarReg(z21, kernel, sum, 5);
    calculateFromVRegWithOneScalarReg(z22, kernel, sum, 6);
    calculateFromVRegWithOneScalarReg(z23, kernel, sum, 7);

    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);
  }

  // epilog1  -> store, compute
  for (; tile_id < N / tile_size; ++tile_id) {
    // do computing
    int32_t val;
    calculateFromVRegWithOneScalarReg(z16, kernel, sum, 0);
    calculateFromVRegWithOneScalarReg(z17, kernel, sum, 1);
    calculateFromVRegWithOneScalarReg(z18, kernel, sum, 2);
    calculateFromVRegWithOneScalarReg(z19, kernel, sum, 3);
    calculateFromVRegWithOneScalarReg(z20, kernel, sum, 4);
    calculateFromVRegWithOneScalarReg(z21, kernel, sum, 5);
    calculateFromVRegWithOneScalarReg(z22, kernel, sum, 6);
    calculateFromVRegWithOneScalarReg(z23, kernel, sum, 7);
  }
}

void pipeline_512_8_8_stagger1x1(int64_t *sum, const int prolog,
                                 const int tile_size) {
  // veclen: 512 bits, 64 bytes, 16 ints.
  // avx512 有 32 个 vreg
  // 前 8 个用于暂存间接访存的下标
  // 另 8 个用于执行 gather 操作，获取最终的数据
  // 因此，每个 tile 的大小为 8 个 vreg，即 8*512 bits = 8*64 bytes = 8*8 i64 =
  // 64 i64 目前假设 tile size 等于 prolog 的 size

  __m512i z0, z1, z2, z3, z4, z5, z6, z7, z16, z17, z18, z19, z20, z21, z22,
      z23;

  // prolog0  -> load
  z0 = _mm512_load_epi32((__m512i *)(B + 0));
  z1 = _mm512_load_epi32((__m512i *)(B + 16));
  z2 = _mm512_load_epi32((__m512i *)(B + 32));
  z3 = _mm512_load_epi32((__m512i *)(B + 48));

  // prolog1  -> gather, load
  z16 = _mm512_i32gather_epi32(z0, A, 4);
  z17 = _mm512_i32gather_epi32(z1, A, 4);
  z18 = _mm512_i32gather_epi32(z2, A, 4);
  z19 = _mm512_i32gather_epi32(z3, A, 4);
  z4 = _mm512_load_epi32((__m512i *)(B + 64));
  z5 = _mm512_load_epi32((__m512i *)(B + 80));
  z6 = _mm512_load_epi32((__m512i *)(B + 96));
  z7 = _mm512_load_epi32((__m512i *)(B + 112));

  // stable   -> store, compute, gather, load
  int64_t tile_id;
  for (tile_id = 0; tile_id < N / tile_size - 2; ++tile_id) {
    // using vreg to do computing
    // *sum += _mm512_reduce_add_epi32(z16);
    // *sum += _mm512_reduce_add_epi32(z17);
    // *sum += _mm512_reduce_add_epi32(z18);
    // *sum += _mm512_reduce_add_epi32(z19);
    _mm512_store_epi32(C + tile_id * tile_size + 0, z16);
    _mm512_store_epi32(C + tile_id * tile_size + 16, z17);
    _mm512_store_epi32(C + tile_id * tile_size + 32, z18);
    _mm512_store_epi32(C + tile_id * tile_size + 48, z19);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);
    z0 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 0));
    z1 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 16));
    z2 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 32));
    z3 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 48));

    _mm512_store_epi32(C + tile_id * tile_size + 64, z20);
    _mm512_store_epi32(C + tile_id * tile_size + 80, z21);
    _mm512_store_epi32(C + tile_id * tile_size + 96, z22);
    _mm512_store_epi32(C + tile_id * tile_size + 112, z23);
    z16 = _mm512_i32gather_epi32(z0, A, 4);
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    z19 = _mm512_i32gather_epi32(z3, A, 4);
    z4 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 64));
    z5 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 80));
    z6 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 96));
    z7 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 112));
  }

  // epilog0  -> store, compute, gather
  for (; tile_id < N / tile_size - 1; ++tile_id) {
    // do computing
    _mm512_store_epi32(C + tile_id * tile_size + 0, z16);
    _mm512_store_epi32(C + tile_id * tile_size + 16, z17);
    _mm512_store_epi32(C + tile_id * tile_size + 32, z18);
    _mm512_store_epi32(C + tile_id * tile_size + 48, z19);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    z23 = _mm512_i32gather_epi32(z7, A, 4);
  }

  // epilog1  -> store, compute
  for (; tile_id < N / tile_size; ++tile_id) {
    // do computing
    _mm512_store_epi32(C + tile_id * tile_size + 64, z20);
    _mm512_store_epi32(C + tile_id * tile_size + 80, z21);
    _mm512_store_epi32(C + tile_id * tile_size + 96, z22);
    _mm512_store_epi32(C + tile_id * tile_size + 112, z23);
  }
}

void pipeline_512_8_8_stagger(int64_t *sum, const int prolog,
                              const int tile_size) {
  // veclen: 512 bits, 64 bytes, 16 ints.
  // avx512 有 32 个 vreg
  // 前 8 个用于暂存间接访存的下标
  // 另 8 个用于执行 gather 操作，获取最终的数据
  // 因此，每个 tile 的大小为 8 个 vreg，即 8*512 bits = 8*64 bytes = 8*8 i64 =
  // 64 i64 目前假设 tile size 等于 prolog 的 size

  __m512i z0, z1, z2, z3, z4, z5, z6, z7, z16, z17, z18, z19, z20, z21, z22,
      z23;

  // prolog0  -> load
  // 512bits = 64bytes = 8longlong, so stride is 8
  z0 = _mm512_load_epi32((__m512i *)(B + 0));
  z1 = _mm512_load_epi32((__m512i *)(B + 16));
  z2 = _mm512_load_epi32((__m512i *)(B + 32));
  z3 = _mm512_load_epi32((__m512i *)(B + 48));

  // prolog1  -> gather, load
  z4 = _mm512_load_epi32((__m512i *)(B + 64));
  z16 = _mm512_i32gather_epi32(z0, A, 4);
  z5 = _mm512_load_epi32((__m512i *)(B + 80));
  z17 = _mm512_i32gather_epi32(z1, A, 4);
  z6 = _mm512_load_epi32((__m512i *)(B + 96));
  z18 = _mm512_i32gather_epi32(z2, A, 4);
  z7 = _mm512_load_epi32((__m512i *)(B + 112));
  z19 = _mm512_i32gather_epi32(z3, A, 4);

  // stable   -> store, compute, gather, load
  int64_t tile_id;
  for (tile_id = 0; tile_id < N / tile_size - 2; ++tile_id) {
    // using vreg to do computing
    // *sum += _mm512_reduce_add_epi32(z16);
    // *sum += _mm512_reduce_add_epi32(z17);
    // *sum += _mm512_reduce_add_epi32(z18);
    // *sum += _mm512_reduce_add_epi32(z19);
    _mm512_store_epi32(C + tile_id * tile_size + 0, z16);
    z0 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 0));
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 16, z17);
    z1 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 16));
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 32, z18);
    z2 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 32));
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 48, z19);
    z3 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 48));
    z23 = _mm512_i32gather_epi32(z7, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 64, z20);
    z4 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 64));
    z16 = _mm512_i32gather_epi32(z0, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 80, z21);
    z5 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 80));
    z17 = _mm512_i32gather_epi32(z1, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 96, z22);
    z6 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 96));
    z18 = _mm512_i32gather_epi32(z2, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 112, z23);
    z7 = _mm512_load_epi32((__m512i *)(B + (tile_id + 1) * tile_size + 112));
    z19 = _mm512_i32gather_epi32(z3, A, 4);
  }

  // epilog0  -> store, compute, gather
  for (; tile_id < N / tile_size - 1; ++tile_id) {
    // do computing
    _mm512_store_epi32(C + tile_id * tile_size + 0, z16);
    z20 = _mm512_i32gather_epi32(z4, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 16, z17);
    z21 = _mm512_i32gather_epi32(z5, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 32, z18);
    z22 = _mm512_i32gather_epi32(z6, A, 4);
    _mm512_store_epi32(C + tile_id * tile_size + 48, z19);
    z23 = _mm512_i32gather_epi32(z7, A, 4);
  }

  // epilog1  -> store, compute
  for (; tile_id < N / tile_size; ++tile_id) {
    // do computing
    _mm512_store_epi32(C + tile_id * tile_size + 64, z20);
    _mm512_store_epi32(C + tile_id * tile_size + 80, z21);
    _mm512_store_epi32(C + tile_id * tile_size + 96, z22);
    _mm512_store_epi32(C + tile_id * tile_size + 112, z23);
  }
}

#endif

void pipeline_scalar(int64_t *sum) {
  for (int i = 0; i < N; ++i)
    kernel(A[B[i]], sum);
}

void startTest(void(foo)(int64_t *)) {
  int64_t sum = 0;
  for (int i = 0; i < N; i++)
    C[i] = 0;
  auto tmp = clearCache(); // Clear the cache

#ifndef MOP
  auto start = chrono::high_resolution_clock::now();
#endif

  foo(&sum);

#ifndef MOP
  auto end = chrono::high_resolution_clock::now();
  auto duration = chrono::duration_cast<chrono::microseconds>(end - start);
#endif

  for (int i = 0; i < N; i++)
    sum += C[i];

#ifndef MOP
  cout << "Function execution time: " << duration.count() / 1000.0
       << " milliseconds" << endl;
#endif
  cout << "\tsum: " << sum << endl;
  cout << "\t\ttemp" << tmp << endl;
}

void startTest_a_b(void(foo)(int64_t *, const int), const int pf_dis) {
  int64_t sum = 0;
  for (int i = 0; i < N; i++)
    C[i] = 0;
  auto tmp = clearCache(); // Clear the cache
  __dump_stats();
#ifndef MOP
  auto start = chrono::high_resolution_clock::now();
#endif
  foo(&sum, pf_dis);
#ifndef MOP
  auto end = chrono::high_resolution_clock::now();
  auto duration = chrono::duration_cast<chrono::microseconds>(end - start);
#endif
  for (int i = 0; i < N; i++)
    sum += C[i];
#ifndef MOP
  cout << "Function execution time: " << duration.count() / 1000.0
       << " milliseconds" << endl;
#endif
  cout << "\tsum: " << sum << endl;
  cout << "\t\ttemp" << tmp << endl;
}

void startTest_l_i_i(void(foo)(int64_t *, int, int), const int x, const int y) {
  int64_t sum = 0;
  for (int i = 0; i < N; i++)
    C[i] = 0;
  auto tmp = clearCache(); // Clear the cache
#ifndef MOP
  auto start = chrono::high_resolution_clock::now();
#endif
  foo(&sum, x, y);
#ifndef MOP
  auto end = chrono::high_resolution_clock::now();
  auto duration = chrono::duration_cast<chrono::microseconds>(end - start);
#endif
  for (int i = 0; i < N; i++)
    sum += C[i];
#ifndef MOP
  cout << "Function execution time: " << duration.count() / 1000.0
       << " milliseconds" << endl;
#endif
  cout << "\tsum: " << sum << endl;
  cout << "\t\ttemp" << tmp << endl;
}

void startTest_pipeline(void(foo)(int64_t *, int, int, int), int distance,
                        int prolog, int epilog) {
  int64_t sum = 0;
  for (int i = 0; i < N; i++)
    C[i] = 0;
  auto tmp = clearCache(); // Clear the cache
#ifndef MOP
  auto start = chrono::high_resolution_clock::now();
#endif
  foo(&sum, distance, prolog, epilog);
#ifndef MOP
  auto end = chrono::high_resolution_clock::now();
  auto duration = chrono::duration_cast<chrono::microseconds>(end - start);
#endif
  for (int i = 0; i < N; i++)
    sum += C[i];
#ifndef MOP
  cout << "Function execution time: " << duration.count() / 1000.0
       << " milliseconds" << endl;
#endif
  cout << "\tsum: " << sum << endl;
  cout << "\t\ttemp" << tmp << endl;
}

int main() {

  fillArrayRandomly(A, N);
  fillArrayRandomly(B, N);
  // fillArrayRandomly(C, N);

  // #ifdef SWPF
  // cout << "[SWPF is defined!]\n";
  // #endif

#ifndef AVX
  cout << "scalar:\n";
  __reset_stats();
  startTest(pipeline_scalar);
  __dump_stats();
  cout << "\n";
#endif

#ifdef AVX

  cout << "scalar to AVX:\n";
  __reset_stats();
  startTest(testFunction);
  __dump_stats();
  cout << "\n";

  cout << "manual_avx512:\n";
  __reset_stats();
  startTest(testFunction_manual_avx512);
  __dump_stats();
  cout << "\n";

  // cout << "pipeline_512_8_8vreg_1sreg:\n";
  // __reset_stats();
  // startTest_l_i_i(pipeline_512_8_8vreg_1sreg, 8, 8 * 16);
  // __dump_stats();
  // cout << "\n";

  cout << "pipeline_512_8_8vreg_reduce:\n";
  __reset_stats();
  startTest_l_i_i(pipeline_512_8_8vreg_reduce, 8, 8 * 16);
  __dump_stats();
  cout << "\n";

  // cout << "pipeline_512_8_8vreg_add_reduce:\n";
  // startTest_l_i_i(pipeline_512_8_8vreg_add_reduce, 8, 8 * 16);
  // cout << "\n";

  cout << "pipeline_512_8_8_stagger1x1:\n";
  __reset_stats();
  startTest_l_i_i(pipeline_512_8_8_stagger1x1, 8, 8 * 16);
  __dump_stats();
  cout << "\n";

  cout << "pipeline_512_8_8_stagger:\n";
  __reset_stats();
  startTest_l_i_i(pipeline_512_8_8_stagger, 8, 8 * 16);
  __dump_stats();
  cout << "\n";
#endif

  return 0;
}
