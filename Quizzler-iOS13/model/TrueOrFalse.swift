//
//  TrueOrFalse.swift
//  Quizzler-iOS13
//
//  class TrueOrFalse extends Question class
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

class TrueOrFalse: Question {
//    adding getChoices
    func getChoices() -> [String] {
        return ["True", "False"]
    }
}
