//
//  MultipleChoice.swift
//  Quizzler-iOS13
//
//  struct MultipleChoice implements Question protocol (interface)
//  this model the multiple choice type question
//
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct MultipleChoice: Question {
    var questionText: String
    
    var answer: String
    
    var choices: [String]
    
    init(q:String, a:[String], correctAnswer:String) {
        self.questionText = q
        self.answer = correctAnswer
        self.choices = a
    }
    
    func checksOut(a: String) -> Bool {
        return self.answer == a
    }
    
    func getQuestion() -> String {
        return self.questionText
    }
    
    func getChoices() -> [String] {
        return self.choices
    }
    
    
}
