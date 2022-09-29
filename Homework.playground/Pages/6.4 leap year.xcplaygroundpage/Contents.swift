//: [Previous](@previous)

import Foundation

typealias VoidCallback = (Int) -> ()

func getValues(x:Int, callbackFunc: VoidCallback) {
    if x % 4 == 0 {
        callbackFunc(x)
    }
}

getValues(x: 1996, callbackFunc: {x in print("\(x) Это високосный год")})


//: [Next](@next)
