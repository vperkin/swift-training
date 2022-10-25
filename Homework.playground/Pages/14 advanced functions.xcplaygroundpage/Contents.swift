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


var array = [0,123,124,345,457,87,43534564,5678,990,44,3,2]

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
func isOdd(value: Int) -> Bool {
    value % 2 != 0
}

// Проверяет, делится ли на 3
func isDivisibleByThree (value: Int) -> Bool {
    value % 3 != 0
}

// Печатает массив отфтфильтрованный функцией isOdd
print(arrayFilter(array: array, closure: isOdd))

// Печатает массив отфильтрованный функциями isOdd и isDivisibleByThree
print(arrayDoubleFilter(array: array,
                  firstClosure: isOdd,
                  secondClosure: isDivisibleByThree))

// функция без автоклоужера
func printAndRemoveLastNumber1(nextNumber: () -> Int) {
    print(nextNumber())
}

// клоужер удаляет последний элемент массива array
printAndRemoveLastNumber1(nextNumber: {array.removeLast()})


// функция c автоклоужером
func printAndRemoveLastNumber2(nextNumber: @autoclosure () -> Int) {
    print(nextNumber())
}

// функция так же удаляет последний элемент массива array, но теперь может
// передавать Int в качестве параметра, не зная, что объявлен функциональный тип
printAndRemoveLastNumber2(nextNumber: array.removeLast())


// Создание массива нечетных чисел в заданном диапазоне с использованием внутренней функции isOdd
func createOddArray(from: Int, to: Int) -> [Int] {
    guard from < to else { return [] }
    let array: [Int] = Array(from...to)
    return arrayFilter(array: array, closure: isOdd)
}

print(createOddArray(from: 0, to: 30))


// Дженерик функция сложения (с условием, что это числовое значение)
func multi<Num: Numeric>(_ number1: Num, _ number2: Num) -> Num {
    number1 * number2
}

multi(34.765, 12.564)
multi(300, 300)
