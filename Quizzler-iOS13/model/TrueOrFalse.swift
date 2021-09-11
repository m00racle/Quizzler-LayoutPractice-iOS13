//
//  TrueOrFalse.swift
//  Quizzler-iOS13
//
//  struct TrueOrFalse implements Question protocol (interface)
//  this is model on true or false model question
//
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct TrueOrFalse: Question {
    var questionText: String
    
    var answer: String
    
    var choices: [String]
    
    init(q:String, a:String) {
        self.questionText = q
        self.answer = a
        self.choices = ["True", "False"]
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
