//: [Previous](@previous)

import Foundation

typealias VoidCallback = () -> ()

func GetValues(x:Int, callbackFunc: VoidCallback) {
    if x % 4 == 0 {
        callbackFunc()
    }
}

GetValues(x: 1996, callbackFunc: {print("Это високосный год")})


//: [Next](@next)
