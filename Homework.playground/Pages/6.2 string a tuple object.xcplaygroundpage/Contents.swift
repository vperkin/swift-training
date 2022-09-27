//: [Previous](@previous)

import Foundation

func superstringer(tuple: (Int, String)) {
    let number = String(tuple.0)
    print(number, "is a", type(of: number))
}

let tuple1:(Int, String) = (12345, "Word")

superstringer(tuple: tuple1)
//: [Next](@next)
