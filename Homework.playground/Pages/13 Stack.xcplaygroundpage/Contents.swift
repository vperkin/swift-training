//: [Previous](@previous)

import Foundation

struct SuperStack<Email> {
    var emails: [Email] = []
    
    mutating func push(_ email:Email) {
        emails.append(email)
        print(emails)
    }
    
    mutating func pop() -> Email? {
        return emails.popLast()
    }
}

var privateEmailId = SuperStack(emails: [11,12,13,14,15,16,17,18])

privateEmailId.push(20)
privateEmailId.pop()
privateEmailId.push(301)

var privateEmailTitle = SuperStack(emails: ["Hi Sam", "Special announcement", "Atention!"])

privateEmailTitle.push("Tuesday survay")



//: [Next](@next)
