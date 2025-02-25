//
//  AdditionGameViewModel.swift
//  DDAddingGame
//
//  Created by joe on 2/25/25.
//

import Foundation

class AdditionGameViewModel: ObservableObject {
    @Published var gameModel: GameModel = GameModel.defaultGame
    
    private var problemCount = 0
    let nextLevelBound = 5
    let maxIncreaseScore = 10
    
    var score: Int {
        gameModel.score
    }
    
    // for example if: nextLevelBound = 5
    // 5, 10, 15, 20, 25, 30
    var timeToMoveUpToNextLevel: Bool {
        problemCount % nextLevelBound == 0
    }
    var number1: Int {
        gameModel.currentProblem.number1
    }
    var number2: Int {
        gameModel.currentProblem.number2
    }
    var possibleSolutions: [Int] {
        gameModel.currentProblem.solutions.shuffled()
    }
    var answer: Int {
        gameModel.currentProblem.answer
    }
    var gameOver: Bool {
        gameModel.gameOver
    }
    
    func generateNumbers() {
        // new problem
        gameModel.currentProblem = ProblemModel(level: gameModel.level)
        
        // increase problemCount
        problemCount += 1
        
        // increase level ?
        if timeToMoveUpToNextLevel {
            gameModel.level += 1
        }
    }
    
    func increaseScore() {
        gameModel.score += min(gameModel.level, maxIncreaseScore)
    }
    
    func loseLife() {
        gameModel.lives = max(gameModel.lives - 1, 0)
        gameModel.score = max(gameModel.score - 2, 0)
    }
    
    func reset() {
        gameModel = GameModel.defaultGame
        problemCount = 0
    }
}
