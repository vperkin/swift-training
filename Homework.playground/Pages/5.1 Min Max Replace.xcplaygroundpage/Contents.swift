//: [Previous](@previous)

import Foundation
import Darwin

var array = [3,5,2,0,1]

print(array)

//search and swap min and max number indexes using min/max method
if let indexMax = array.firstIndex(of : array.max() ?? -1),
   let indexMin = array.firstIndex(of: array.min() ?? -1) {
//giving found values to swapAt method
    array.swapAt(indexMax, indexMin)
} else {
    print("index not found")
}

print(array)




//: [Next](@next)
