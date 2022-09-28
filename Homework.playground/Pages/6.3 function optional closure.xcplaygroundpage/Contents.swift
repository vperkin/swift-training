//typealias VoidCallback = () -> ()

func GetValues(x:Int, callbackFunc: () -> ()){
    if x > 0 {
        callbackFunc()
    }
}

GetValues(x: 1000000, callbackFunc: {print("x больше чем 0")})

//: [Next](@next)
