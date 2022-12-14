//: [Previous](@previous)

import Foundation

class Transfer {
    var transferID = 0
    var source = ""
    var destination = ""
    var amount = 0
    var fee = 0
    let curencyList = ("₽", "€", "$")
    lazy var curency = curencyList.0
    func createTransfer() {
        print("transfer ID \(transferID) from \(source) to \(destination) created, transfer fee is \(fee)")
    }
}

class InternalTransfer: Transfer {
    override func createTransfer() {
        transferID += 1
        print("Transfer ID \(transferID) for \(amount)\(curency) from your \(source) to your \(destination) created, transfer fee is \(fee) \(curency)")
    }
}


class ExternalTransfer: Transfer {
    //var fee = amount * 3 / 100
    override var fee:Int {
        get {
        if amount * 3 / 100 < 50 {return 50}
        else {return amount * 3 / 100}
        }
        set {newValue}
    }
    override func createTransfer() {
        transferID += 1
        print("Transfer ID \(transferID) for \(amount)\(curency) from your \(source) to exernal account \(destination) created, transfer fee is \(fee) \(curency)")
    }
}


let newTransfer = InternalTransfer()
newTransfer.amount = 1900
newTransfer.source = "Share 01"
newTransfer.destination = "Loan 02"
newTransfer.createTransfer()

let newTransfer1 = ExternalTransfer()
newTransfer1.amount = 1200
newTransfer1.source = "Share 01"
newTransfer1.destination = "CitiBank, Petrov.P, 123456, Share 02"
newTransfer1.createTransfer()


let TransfersArray:[Transfer] = [newTransfer, newTransfer1]

for transfer in TransfersArray {
    print(transfer.fee, transfer.curency)
}
