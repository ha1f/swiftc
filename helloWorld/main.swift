//
//  main.swift
//  helloWorld
//
//  Created by 山口智生 on 2016/05/19.
//  Copyright © 2016年 ha1f. All rights reserved.
//

import Foundation

<<<<<<< HEAD
<<<<<<< HEAD
class Benchmark {
    private var startTime: NSDate
    private var key: String

    init(key: String) {
        self.startTime = NSDate()
        self.key = key
    }

    // 処理終了
    private func finish() {
        let elapsed = NSDate().timeIntervalSinceDate(self.startTime)
        let formatedElapsed = String(format: "%.3f", elapsed)
        print("Benchmark: \(key), Elasped time: \(formatedElapsed)(s)")
    }

    // 処理をブロックで受け取る
    class func measure(key: String, block: () -> ()) {
        let benchmark = Benchmark(key: key)
        block()
        benchmark.finish()
    }
}

func isPrime(n: Int) -> Bool {
    guard n >= 2 else {
        return false
    }
    if n == 2 {
        return true
    }
    let m = max(Int(sqrt(Double(n))), 2)
    for i in 2...m {
        if n%i == 0 {
            return false
        }
    }
    return true
}

func e1() {
    var nums = (2...10000).map{$0}
    var primes = [Int]()
    while let p = nums.first {
        primes.append(p)
        nums = nums.filter {$0 % p != 0}
    }
    print(primes)
}

func e2() {
    let N = 500000

    var isPrime = [Bool](count: N-1, repeatedValue: true)

    for i in (2...Int(sqrt(Double(N)))) {
        guard isPrime[i-2] else {
            continue
        }
        for j in 2...Int(N/i) {
            isPrime[i*j-2] = false
        }
    }

    print(isPrime.enumerate().filter{(n, b) in b}.map{(n, b) in n+2})
}

print("Hello, Swift World!")
//Benchmark.measure("prime", block: e2)
Benchmark.measure("prime", block: {showPrime()})
print("finish")
=======
print("Hello, World!")

>>>>>>> 7b9a3dc... Initial Commit
=======
class Benchmark {
    private var startTime: NSDate
    private var key: String

    init(key: String) {
        self.startTime = NSDate()
        self.key = key
    }

    // 処理終了
    private func finish() {
        let elapsed = NSDate().timeIntervalSinceDate(self.startTime)
        let formatedElapsed = String(format: "%.3f", elapsed)
        print("Benchmark: \(key), Elasped time: \(formatedElapsed)(s)")
    }

    // 処理をブロックで受け取る
    class func measure(key: String, block: () -> ()) {
        let benchmark = Benchmark(key: key)
        block()
        benchmark.finish()
    }
}

func isPrime(n: Int) -> Bool {
    guard n >= 2 else {
        return false
    }
    if n == 2 {
        return true
    }
    let m = max(Int(sqrt(Double(n))), 2)
    for i in 2...m {
        if n%i == 0 {
            return false
        }
    }
    return true
}

func e1() {
    var nums = (2...10000).map{$0}
    var primes = [Int]()
    while let p = nums.first {
        primes.append(p)
        nums = nums.filter {$0 % p != 0}
    }
    print(primes)
}

func e2() {
    let N = 500000

    var isPrime = [Bool](count: N-1, repeatedValue: true)

    for i in (2...Int(sqrt(Double(N)))) {
        guard isPrime[i-2] else {
            continue
        }
        for j in 2...Int(N/i) {
            isPrime[i*j-2] = false
        }
    }

    print(isPrime.enumerate().filter{(n, b) in b}.map{(n, b) in n+2})
}

print("Hello, Swift World!")
//Benchmark.measure("prime", block: e2)
Benchmark.measure("prime", block: {showPrime()})
print("finish")
>>>>>>> 6b2c3e7... いろいろ
