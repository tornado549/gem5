#include <chrono>
#include <cstdint>
#include <immintrin.h>
#include <iostream>
#include <random> // Header for random number generator

#ifdef MOP
#include <gem5/m5ops.h>
#endif

using namespace std;

constexpr int64_t N = 128 * 10000;

void __reset_stats()
{
  #ifdef MOP
  m5_reset_stats(0, 0);
  #endif
}

void __dump_stats()
{
  #ifdef MOP
  m5_dump_stats(0, 0);
  #endif
}

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

  int L3CACHE_SIZE_BYTE = 12*1024*1024;
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

void testFunction(int64_t *sum) {
  for (int64_t i = 0; i < N; ++i) {
    *sum += A[B[i]];
    // C[i] = A[B[i]];
  }
}

void startTest(void(foo)(int64_t *)) {
  int64_t sum = 0;
  // for (int i = 0; i < N; i++)
  //   C[i] = 0;
  auto tmp = clearCache(); // Clear the cache
  #ifndef MOP
  auto start = chrono::high_resolution_clock::now();
  #endif

  __reset_stats();
  foo(&sum);
  __dump_stats();

  #ifndef MOP
  auto end = chrono::high_resolution_clock::now();
  auto duration = chrono::duration_cast<chrono::microseconds>(end - start);
  // for (int i = 0; i < N; i++)
  //   sum += C[i];
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

  startTest(testFunction);


  return 0;
}