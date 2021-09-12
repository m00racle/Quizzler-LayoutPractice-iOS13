//
//  QuizBotTest.swift
//  Quizzler-iOS13Tests
//
//  Test the struct QuizBot implements QuizHost protocol
//
//  Created by Yanuar Heru on 12/09/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

@testable import Quizzler_iOS13
import XCTest

class QuizBotTest: XCTestCase {
    var host:QuizHost!

    override func setUp() {
        super.setUp()
        host = QuizBot(pool: [TrueOrFalse(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
                              MultipleChoice(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum")])
    }
    
    override func tearDown() {
        host = nil
        super.tearDown()
    }
    
    func test_host_asking_the_right_question1() {
//        asking the first question
        XCTAssertEqual(host.ask(), "Buzz Aldrin's mother's maiden name was 'Moon'.")
    }
    
    func test_host_increment_round() {
        let oldRound = host.round
        host.nextRound()
        XCTAssertEqual(host.round, oldRound + 1)
    }
    
    func test_host_reset_round_and_scores_at_pool_end() {
        host.nextRound()
//        get to the end of the pool then next round
        host.nextRound()
        XCTAssertEqual(host.round, 0)
        XCTAssertEqual(host.score, 0)
    }
    
    func test_host_asking_the_right_question_next_round() {
        host.nextRound()
        XCTAssertEqual(host.ask(), "What alcoholic drink is made from molasses?")
    }
    
    func test_host_checksOut_true_or_false_correct() {
        let oldScore = host.score
        XCTAssertEqual(host.checksOut(response: "True"), true)
        XCTAssertEqual(host.score, oldScore + 1)
    }
    
    func test_host_checksOut_choices_correct() {
        host.nextRound()
//        get to the multiple choice round questions
        let oldScore = host.score
        XCTAssertEqual(host.checksOut(response: "Rum"), true)
        XCTAssertEqual(host.score, oldScore + 1)
    }
    
    func test_host_checksOut_true_or_false_wrong() {
        let oldScore = host.score
        XCTAssertEqual(host.checksOut(response: "False"), false)
        XCTAssertEqual(host.score, oldScore)
    }
    
    func test_host_checksOut_choices_wrong() {
        host.nextRound()
//        get to the multiple choice round questions
        let oldScore = host.score
        XCTAssertEqual(host.checksOut(response: "Gin"), false)
        XCTAssertEqual(host.score, oldScore)
    }
}
