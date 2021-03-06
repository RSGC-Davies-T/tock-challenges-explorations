//: Playground - noun: a place where people can play

import Cocoa
var endLoop : Bool
var userInput : String = readLine()!
var dateCheck : [Int] = []
print("\nEnter the month: ", terminator: "")

repeat {
    //if this turns true the next sequence will inititate
    endLoop = false
    switch userInput {
        
    default:
        // attempt to convert the input to an integer
        if let month = Int(userInput) {
            //adds the input to the array, but only integer inputs are accepted
            dateCheck.append(month)
            //prompts for another number
            print("\nEnter the day: ", terminator: "")
            userInput = readLine()!
        } else {
            //invalid input safety net
            print("\nInvalid Input ", terminator: "")
            userInput = readLine()!
        }
    }
    
} while endLoop == false