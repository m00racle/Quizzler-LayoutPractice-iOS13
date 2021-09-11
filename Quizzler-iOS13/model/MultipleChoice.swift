//
//  MultipleChoice.swift
//  Quizzler-iOS13
//
//  class MultipleChoice extends Question class
//  this model the multiple choice type question
//
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

class MultipleChoice: Question {
    private var choices: [String]
    
    init(q:String, a:[String], correctAnswer:String) {
        self.choices = a
        super.init(q: q, a: correctAnswer)
    }
    
    func getChoices() -> [String] {
        return self.choices
    }
}
