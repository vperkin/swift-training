//: [Previous](@previous)

import Foundation

//var dic:Dictionary<String,String> = Dictionary.init()
var dic = ["Tom":"Qwerty12345", "Pit":"aaa", "Kate":"QWdc$mck439d@Loo439"]

dic["Nik"] = "aaabbb"

dic

for (name, password) in dic {
    if password.count >= 10 {
        print(name, password)}
}
//: [Next](@next)
