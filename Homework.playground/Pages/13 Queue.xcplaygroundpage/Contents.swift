//: [Previous](@previous)

import Foundation

struct Queue<Email> {
    var emails: [Email] = []
    
    mutating func input(_ email:Email) {
        emails.append(email)
    }
    
    mutating func output() -> Email? {
        emails.popLast()
    }
}

var privateEmail = Queue(emails: [11,12,13,14,15,16,17,18])

privateEmail.input(19)

//: [Next](@next)
