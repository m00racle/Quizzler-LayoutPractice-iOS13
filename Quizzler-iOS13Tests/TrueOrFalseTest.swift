//
//  TrueOrFalseTest.swift
//  Quizzler-iOS13Tests
//
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

@testable import Quizzler_iOS13
import XCTest

class TrueOrFalseTest: XCTestCase {
    var question:Question!
    var trialText:String!
    
    override func setUp() {
        super.setUp()
        trialText = "Is this a True or False test?"
        question = TrueOrFalse(q:trialText, a: "True")
    }
    
    override func tearDown() {
        question = nil
        super.tearDown()
    }
    
    func test_get_question() {
        XCTAssertEqual(question.ask, trialText)
    }
    
    func test_get_the_correct_answer() {
        XCTAssertEqual(question.answer, "True")
    }
    
    func test_getChoice_returns_True_and_False() {
        XCTAssertEqual(question.choices, ["True", "False"])
    }
    
}
