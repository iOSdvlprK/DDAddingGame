//
//  ProblemModel.swift
//  DDAddingGame
//
//  Created by joe on 2/24/25.
//

import Foundation

struct ProblemModel: Identifiable {
    let id = UUID()
    let number1: Int
    let number2: Int
    let level: Int
    
    // solutions[0] is the answer
    // the other elements are distactions.
    let solutions: [Int]
    var answer: Int {
        solutions[0]
    }
    
    func checkSolution(value: Int) -> Bool {
        !solutions.isEmpty && value == answer
    }
    
    init(level: Int) {
        self.level = level
        let lower = (level - 1) * 5
        let upper = level * 5
        self.number1 = Int.random(in: lower...upper)
        self.number2 = Int.random(in: lower...upper)
        let answer = number1 + number2
        
        var newSolution: [Int] = []
        newSolution.append(answer) // true solution at solution[0] = 27 (← e.g.)
        newSolution.append(answer + 10) // solution[1] distraction 37
        let belowAnswer = max(0, answer - 5)
        let aboveAnswer = answer + 5
        newSolution.append(Int.random(in: (answer+1)...aboveAnswer)) // solution[2]
        newSolution.append(Int.random(in: belowAnswer..<answer)) // solution[3]
        self.solutions = newSolution
    }
}
