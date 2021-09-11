//
//  QuestionTest.swift
//  Quizzler-iOS13Tests
//
//  tests for Question class
//
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

@testable import Quizzler_iOS13
import XCTest

class QuestionTest: XCTestCase {
    var question:Question!
    var trialText:String!
    
    override func setUp() {
        super.setUp()
        trialText = "Is this a test?"
        question = Question(q:trialText, a: "True")
    }
    
    override func tearDown() {
        question = nil
        super.tearDown()
    }
    
    func test_wrong_answer_checksOut_false() {
        XCTAssertEqual(question.checksOut(a:"False"), false)
    }
    
    func test_correct_answer_cheksOut_true() {
        XCTAssertEqual(question.checksOut(a:"True"), true)
    }
    
    func test_get_question() {
        XCTAssertEqual(question.getQuestion(), trialText)
    }

}
