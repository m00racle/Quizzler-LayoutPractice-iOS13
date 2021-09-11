//
//  Question.swift
//  Quizzler-iOS13
//  Protocol (interface) to model Question object specification and representation
//  in dependency injection.
//
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

protocol Question {
    var questionText: String { get }
    var answer: String { get }
    var choices: [String] { get }
    
    func checksOut(a:String) -> Bool
    
    func getQuestion() -> String
    
    func getChoices() -> [String]
}
