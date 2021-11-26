//
//  BoardFoot.swift
//
//  Created by Roman Cernetchi
//  Created on 2021-11-25
//  Version 1.0
//  Copyright (c) 2021 Roman Cernetchi. All rights reserved.
//
//  This program calculates the length needed to produce one board foot given a
//  width and height.
//
import Foundation

// Volume of a board foot in m³.
let boardFootSize = 144.0

// Returns the length of a board foot using width and height
func lengthCalculation(width: Double, height: Double) -> Double {
    return boardFootSize / width / height
}

// User prompt
print("Enter your chosen width: ", terminator: "")

// Gathers the user input and makes sure it isn't empty
guard let widthString = readLine(), !widthString.isEmpty else {
    print("Please enter a correct input.")
    exit(001)
}

// Tries to parse widthString into a Double
if let width = Double(widthString) {

    // User prompt
    print("Enter your chosen height: ", terminator: "")

    // Gathers the user input and makes sure it isn't empty
    guard let heightString = readLine(), !heightString.isEmpty else {
        print("Please enter a correct input.")
        exit(001)
    }

    // Tries to parse HeightString into a Double
    if let height = Double(heightString) {

        // Calls lengthCalculation to get the length
        let length = lengthCalculation(width: width, height: height)

        // Outputs the length
        print("The board length is \(length) m.")
    } else {
        print("Please enter a correct input\n")
    }

} else {
    print("Please enter a correct input\n")
}

print("\nDone.")
