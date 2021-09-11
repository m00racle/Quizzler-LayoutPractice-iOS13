//
//  MultipleChoiceTest.swift
//  Quizzler-iOS13Tests
//
//  Testing for the MultipleChoice class
//  test all from the superclass
//  plus the different init() method
//  different init parameters arrangements
//  different getChoices function
//
//  Created by Yanuar Heru on 11/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

@testable import Quizzler_iOS13
import XCTest

class MultipleChoiceTest: XCTestCase {
    
    var question:Question!
    var trialText:String!
    
    override func setUp() {
        super.setUp()
        
        question = MultipleChoice(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    }
    
    override func tearDown() {
        question = nil
        super.tearDown()
    }
    
    func test_wrong_answer_checksOut_false() {
        XCTAssertEqual(question.checksOut(a:"Indonesia"), false)
    }
    
    func test_correct_answer_cheksOut_true() {
        XCTAssertEqual(question.checksOut(a:"Australia"), true)
    }
    
    func test_get_question() {
        XCTAssertEqual(question.getQuestion(), "Where is Tasmania located?")
    }
    
    func test_getChoice_returns_True_and_False() {
        XCTAssertEqual(question.getChoices(), ["Indonesia", "Australia", "Scotland"])
    }

}
