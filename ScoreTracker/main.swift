//
//  main.swift
//  ScoreTracker
//
//  Created by Szabolcs Toth on 23/01/2020.
//  Copyright © 2020 purzelbaum.hu. All rights reserved.
//

import Foundation

print("Please enter  your input: ")

var aScore = 0
var bScore = 0
var cScore = 0
var dScore = 0
var eScore = 0

if let response = readLine() {
    
    for char in response {
        switch (char) {
        case "a":
            aScore += 1
        case "A":
            aScore -= 1
        case "b":
            bScore += 1
        case "B":
            bScore -= 1
        case "c":
            cScore += 1
        case "C":
            cScore -= 1
        case "d":
            dScore += 1
        case "D":
            dScore -= 1
        case "e":
            eScore += 1
        case "E":
            eScore -= 1
        default:
              break
        }
    }
} else {
   print("No input no fun...")
}

struct FinalScore {
    var name: String
    var score: Int
}

var finalScore  = [
    FinalScore(name: "a", score: aScore),
    FinalScore(name: "b", score: bScore),
    FinalScore(name: "c", score: cScore),
    FinalScore(name: "d", score: dScore),
    FinalScore(name: "e", score: eScore)
]

finalScore.sort {
    $0.score > $1.score
}

for item in finalScore {
    print("\(item.name):\(item.score) ", terminator:"")
}
