//
//  QuizHost.swift
//  Quizzler-iOS13
//
//  This is to model the quiz host.
//  A host must be able to:
//      1. Ask Questions
//      2. Check answers
//      3. Proceed rounds
//      4. Keeping scores
//
//  Created by Yanuar Heru on 12/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

protocol QuizHost {
    var pool: [Question] { get }
    var round: Int {set get}
    var score: Int {set get}
    
//    abstract functions
    func ask() -> String
    func passChoices() -> [String]
    mutating func checksOut(response:String) -> Bool
    mutating func nextRound()
    func showScore() -> String
}

//QuizBot is struct implementation of the QuizHost protocol

struct QuizBot : QuizHost {
    var pool: [Question]
    
    var round: Int = 0
    
    var score: Int = 0
    
    func ask() -> String {
        return pool[round].ask
    }
    
    func passChoices() -> [String] {
        return pool[round].choices
    }
    
    mutating func checksOut(response: String) -> Bool {
        if response == pool[round].answer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func nextRound() {
//        code
        if round + 1 < pool.count {
            round += 1
        } else {
            score = 0
            round = 0
        }
    }
    
    func showScore() -> String {
        return String(score)
    }
    
}
