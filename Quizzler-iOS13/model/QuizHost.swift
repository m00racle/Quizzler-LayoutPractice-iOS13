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
    mutating func checksOut(response:String) -> Bool
    mutating func nextRound()
    
}
