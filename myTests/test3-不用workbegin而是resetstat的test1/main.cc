#include <iostream>
#include <cstring>
#include <cmath>
#include <gem5/m5ops.h>
#include <random>

using namespace std;

void fillArrayRandomly(int arr[], int length) {
    // Use current time as the seed for the random number generator
    // std::random_device rd;
    // std::mt19937 gen(rd());

    std::mt19937 gen(1000);
    std::uniform_int_distribution<int> dis(0, length-1);

    for (int i = 0; i < length; ++i) {
        arr[i] = dis(gen) % length;
    }
}

// Function to clear the cache
long long clearCache() {
    long long tmp = 0;

    const int cacheSize = 64 * 1024 / 4 + 200; // Adjust this based on your system's cache size
    int* buffer = new int[cacheSize];
    fillArrayRandomly(buffer, cacheSize);

    for (int i = 0; i < cacheSize; ++i) {
        tmp += buffer[i];
    }
    std::cout << "[cache is cleared!]\n";

    delete[] buffer;

    return tmp;
}

int add(int x, int y)
{
    return x + y;
}

const int N = 1e2;
const int M = 1e3;
int aa[N][N], bb[N][N];
// int aaa[M][M], bbb[M][M];

long long mul0()
{
    long long res = 0;
    for(int i=0; i<N; i++) {
        for(int j=0; j<N; j++) {
            res += aa[i][j] * bb[i][j];
        }
    }
    return res;
}


long long mul1()
{
    long long res = 0;
    for(int i=0; i<N; i++) {
        for(int j=0; j<N; j++) {
            res += aa[j][i] * bb[j][i];
        }
    }
    return res;
}

// long long mul2()
// {
//     long long res = 0;
//     for(int i=0; i<M; i++) {
//         for(int j=0; j<M; j++) {
//             res += aaa[j][i] * bbb[j][i];
//         }
//     }
//     return res;
// }

int main()
{
    memset(aa, 5, sizeof aa);
    memset(bb, 100, sizeof bb);
    // memset(aaa, 7, sizeof aaa);
    // memset(bbb, 77, sizeof bbb);

    cout << "[main begins]" << endl;

// cout << "clear cache:: " << clearCache() << endl;
    // cout << "mul2 is called: ";
    // cout << mul2() << endl;
    // cout << "[mul begins]" << endl;

// m5_work_begin(1, 0);
m5_reset_stats(0, 0);

    cout << mul0() << endl;

    // cout << mul1() << endl;

m5_dump_stats(0, 0);
// m5_work_end(1, 0);

    cout << "[mul ends]" << endl;

    cout << "[main ends]" << endl;

    // m5_checkpoint(0, 0);
    // m5_exit(0);

    return 0;
}