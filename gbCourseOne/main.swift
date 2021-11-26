//
//  main.swift
//  gbCourseOne
//
//  Created by Evgeniy Kolesnikov on 23.11.2021.
//

import Foundation

//print("Hello, World!")

//exercise1
//ver1

func evenornot (numder: Int) {
    if numder % 2 == 0 {
        print("Четное")
    }
    else {
        print("Нечетное")
    }
}

//ver2

func oddoreven (number: Int) {
    number % 2 != 0 ? print("Нечетное") : print("Четное")
}

//exercise2

func modthree (number: Int) {
    number % 3 == 0 ? print("Делиться на 3") : print("Не делиться на 3")
}

//exercise3

var numbers = Array (1...100)
//print(numbers)

//exercise4

var filternumbers = numbers.filter({$0 % 2 != 0})
var filterfilternumbers = filternumbers.filter({$0 % 3 != 0})
numbers = filterfilternumbers

//exercise5

var numbersfibonacci: [Int] = [0]
func fibonacci(n: Int) -> Int {
    if n == 0 || n == 1 {
        return n;
    } else
    { return fibonacci(n: n - 1) + fibonacci(n: n - 2) } }
for sequencenumber in (1...50){
    numbersfibonacci.append(fibonacci(n: sequencenumber))
}
print(numbersfibonacci)

//exercise6

func Eratosthenes (num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }

    return true
}
func simplenumbers () -> [Int] {
    var results = [Int]()
    var i = 2
    while results.count < 100 {
        if Eratosthenes(num: i) {
            results.append(i)
        }
        i += 1
    }

    return results
}
print (simplenumbers())

