//
//  main.swift
//  Calculator
//
//  Created by Alex Paul on 10/25/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
  switch opString {
  case "+":
    return {x, y in x + y }
  case "-":
    return {x, y in x - y }
  case "*":
    return {x, y in x * y }
  case "/":
    return {x, y in x / y }
  default:
    return {x, y in x + y }
  }
}

let closureOperation = mathStuffFactory(opString: "+")


let result = closureOperation(45, 5)

print("the result of the operation is \(Int(result))")


let mathFunction = mathStuffFactory(opString: "5 + 25")

let userInput = readLine() ?? "5 + 5"

print(userInput.components(separatedBy: " ")) // separates string into array but looks for " " to reparate each string


func takeInInput(input: String) -> Double {
    
    let userInputArray = input.components(separatedBy: " ")
    
    let mathFunction = mathStuffFactory(opString: userInputArray[1])
    
    let num1 = Double(userInputArray[0]) ?? 0.0
    
    let num2 = Double(userInputArray[2]) ?? 0.0
    
    let calcu = mathFunction(num1,num2)
    
    
    return 0.0
}
