//
//  Question.swift
//  Quizzler-iOS13
//  Class for the Questions
//
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

class Question {
    private var questionText: String
    private var answer: String
    
    init(q:String, a:String) {
        self.questionText = q
        self.answer = a
    }
    
    func checksOut(a:String) -> Bool {
        return a == self.answer
    }
    
    func getQuestion() -> String {
        return self.questionText
    }
}
