//
//  Day1-1.swift
//  Tock-Challenges
//
//  Created by Tommy Davies on 2016-01-28.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

import Foundation

//: Playground - noun: a place where people can play

var userInput : String = readLine()!
var dateCheck : [Int] = []
var endLoop : Bool

repeat {
    //if this turns true the next sequence will inititate
    endLoop = false
    switch userInput {
    default:
        print("\nEnter the month: ", terminator: "")
        // attempt to convert the input to an integer
        if let month = Int(userInput) {
            //adds the input to the array, but only integer inputs are accepted
            dateCheck.append(month)
            //prompts for another number
            userInput = readLine()!
            print("\nEnter the day: ", terminator: "")
            if let day = Int(userInput) {
                //adds the input to the array, but only integer inputs are accepted
                dateCheck.append(day)
                endLoop = true
                userInput = readLine()!
            }
        } else {
            //invalid input safety net
            print("\nInvalid Input ", terminator: "")
            userInput = readLine()!
        }
    }
    
} while endLoop == false
