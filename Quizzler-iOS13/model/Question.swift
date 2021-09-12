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
    var ask: String { get }
    var answer: String { get }
    var choices: [String] { get }
    
}

//  struct TrueOrFalse implements Question protocol (interface)
//  this is model on true or false model question

struct TrueOrFalse: Question {
    var ask: String
    
    var answer: String
    
    var choices: [String]
    
    init(q:String, a:String) {
        self.ask = q
        self.answer = a
        self.choices = ["True", "False"]
    }
    
    
}

//  struct MultipleChoice implements Question protocol (interface)
//  this model the multiple choice type question

struct MultipleChoice: Question {
    var ask: String
    
    var answer: String
    
    var choices: [String]
    
    init(q:String, a:[String], correctAnswer:String) {
        self.ask = q
        self.answer = correctAnswer
        self.choices = a
    }
    
    
}
