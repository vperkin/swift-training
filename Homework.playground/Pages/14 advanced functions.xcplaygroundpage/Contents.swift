//: [Previous](@previous)

import Foundation

//функция возвращает квадрат числа
func squareOf(_ x:Double) -> Double {
    return x * x
}

//функция возвращает корень числа
func rootOf(_ x:Double) -> Double {
    return x.squareRoot()
}

//функция принимает число и значение function функционального типа
//в зависимости от которого она посчитает квадрат или корень числа
func findOut(function:(Double) -> Double, _ x:Double) {
    print("Результат функции: \(function(x))")
}

findOut(function:squareOf, 3.0)
findOut(function:rootOf, 9.0)


var array = [0,123,124,345,457,87,43534564,5678,990,44,3,2,2]

// Фильтрует массив по одному параметру
func arrayFilter(array: [Int], closure: (Int) -> Bool) -> [Int] {
    var resultArray: [Int] = []
    for value in array {
        if closure(value) {
            resultArray.append(value)
        }
    }
    return resultArray
}

// Фильтрует массив по двум параметрам
func arrayDoubleFilter(array: [Int],
                       firstClosure: (Int) -> Bool,
                       secondClosure: (Int) -> Bool) -> [Int] {
    var resultArray: [Int] = []
    for value in array {
        if firstClosure(value) && !secondClosure(value) {
            resultArray.append(value)
        }
    }
    return resultArray
}

// Проверяет на нечетность
func isOdd(y value: Int) -> Bool {
    value % 2 != 0
}

// Проверяет, является ли число больше 100
func isDivisibleByThree (x value: Int) -> Bool {
    value % 3 != 0
}

// Создание массива B только из четных чисел массива A
print(arrayFilter(array: array, closure: isOdd))

// Создание массива C только из четных чисел массива А, которые не больше 100
print(arrayDoubleFilter(array: array,
                  firstClosure: isOdd,
                  secondClosure: isDivisibleByThree))
