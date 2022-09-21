//: [Previous](@previous)

import Foundation
import Darwin

var array = [5028, -2635, -373, 669, -5999, 2034, -4166, -928, 3440, -8457, 2269, 3143, -1105000]

print(array)

if let indexMax = array.firstIndex(of : array.max() ?? -1),
   let indexMin = array.firstIndex(of: array.min() ?? -1) {
    array[indexMax ] = array.min() ?? 0
    array[indexMin ] = array.max() ?? 0
} else {
    print("index not found")
}

print(array)




//: [Next](@next)
