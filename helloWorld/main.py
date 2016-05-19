#coding: utf-8

import math
import time

start = time.time()
N = 500000

isPrime = [True for i in range(N-1)]

for i in range(2, int(math.sqrt(N)+1)):
    if isPrime[i-2]:
        for j in range(2, int(N/i)+1):
            isPrime[i*j-2] = False
print([n+2 for n,b in enumerate(isPrime) if b])

elapsed_time = time.time() - start
print("elapsed_time:{0}".format(elapsed_time) + "[sec]")

#0.35
#0.50
#0.02
