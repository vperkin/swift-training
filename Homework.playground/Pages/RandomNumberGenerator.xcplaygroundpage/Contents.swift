import Cocoa

func randomNumberGenerator(lenght:Int = 200, start:Int = -1000, stop:Int = 1000) -> Int {
var array = [Int]()
    
for _ in 1...(lenght){
let randomInt = Int.random(in: start..<stop)
    array.append(randomInt)
}

    print("full array", array)
print("duplicated numbers", array.filter{ i in array.filter{ $0 == i }.count > 1})

let duplicates = array.filter{ i in array.filter{ $0 == i }.count > 1}
print("duplicates only", duplicates)
let firstDuplicatedNumber = duplicates.first ?? -1
print("firstDuplicatedNumber is", firstDuplicatedNumber)
if let i = array.firstIndex(of : firstDuplicatedNumber) {
    return i
} else{
    return firstDuplicatedNumber
}
}

print(randomNumberGenerator(lenght:200, start:-10000, stop:10000))

