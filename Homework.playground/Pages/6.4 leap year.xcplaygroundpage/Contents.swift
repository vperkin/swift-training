//: [Previous](@previous)

import Foundation

typealias VoidCallback = (Int) -> ()

func getValues(x:Int, callbackFunc: VoidCallback) {
    if x % 4 == 0 || x % 100 == 0 || x % 400 == 0 {
        callbackFunc(x)
    }
}

getValues(x: 1996, callbackFunc: {x in print("\(x) - это високосный год")})


//: [Next](@next)
