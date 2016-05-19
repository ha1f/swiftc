#include <stdio.h>
#include <math.h>
#include <time.h>

#define NUM 500000

void showPrime() {
    clock_t t = clock();

    unsigned sq_num = (int)sqrt((double)NUM);
    unsigned prime[NUM];

    // 1が立っているものが素数
    // 0が立っているものが合成数（素数ではない）

    for (int i = 0; i < NUM; i++) {
      prime[i] = 1;  // 全ての数に1を立てる
    }
    prime[0] = 0;    // 1は素数ではない

    for (int i = 1; i < sq_num; i++) {
        if (prime[i] == 1){          // prime[i]が素数なら
            for (int j = (i+1); (i+1) * j <= NUM; j++) {
                prime[(i+1) * j - 1] = 0;  // 素数の倍数は素数ではない
            }
        }
    }

    for (int i = 0; i < NUM; i++) {
        if (prime[i] == 1) {  // 1が立っているものが素数
            printf("%7d", i + 1);
        }
    }
    printf("\n");

    double pTime = 1.0 * (clock()-t) / CLOCKS_PER_SEC;
    printf("%lfsec", pTime);
}
