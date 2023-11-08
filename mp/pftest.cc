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

int main() {

  int nums[10000];

  int sum = 0;
  __reset_stats();
  for(int i=0; i<10000; i++) {
    __builtin_prefetch(nums+i+32, 0, 3);
    sum += nums[i];
  }
  __dump_stats();
  cout << sum << endl;

  return 0;
}