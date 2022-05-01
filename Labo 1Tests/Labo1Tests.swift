//
//  Labo_1Tests.swift
//  Labo 1Tests
//
//  Created by Vincent Leduc on 2021-06-30.
//  Copyright © 2021 Ahuntsic. All rights reserved.
//

import XCTest

@testable import Labo_1

class Labo1Tests: XCTestCase {

    var game: Game!
    var question1: Question!
    var question2: Question!
    var question3: Question!
    override func setUp() {
        super.setUp()
        game = Game()
        question1 = Question()
        question2 = Question()
        question3 = Question()
        question1.isCorrect = true
        question2.isCorrect = true
        question3.title = ""
    }
    func testGivenTwoTrueQuestions_WhenAnsweringTrue_ThenScoreIsOneAndGameOnGoing() {
        var questions = [Question]()
        questions.append(question1)
        questions.append(question2)
        game.setGameQuestions(questions)
        // when
        game.answerCurrentQuestion(with: true)
        // Then
        XCTAssert(game.score == 1)
        XCTAssert(game.state == .ongoing)
    }
    func testGivenOneTrueQuestion_WhenAnsweringFalse_ThenScoreIs0AndGameOver() {
        var oneTrueQuestion = [Question]()
        oneTrueQuestion.append(question1)
        game.setGameQuestions(oneTrueQuestion)
        // when
        game.answerCurrentQuestion(with: false)
        // then
        XCTAssert(game.score == 0)
        XCTAssert(game.state == .over)
    }
    func testGivenOneTrueQuestion_WhenAnsweringTrue_ThenScoreIs1AndGameOver() {
        var oneTrueQuestion = [Question]()
        oneTrueQuestion.append(question1)
        game.setGameQuestions(oneTrueQuestion)
        // when
        game.answerCurrentQuestion(with: true)
        // then
        XCTAssert(game.score == 1)
        XCTAssert(game.state == .over)
    }
    func testGivenEmptyQuestionnaire_WhenSetGameQuestions_ThenGameIsOnGoingAndCurrentQuestionMatchesExcpectedTitle() {
        var questionnaire = [Question]()
        questionnaire.append(question3)
        // when
        game.setGameQuestions(questionnaire)
        // then
        XCTAssert(game.state == .ongoing)
        XCTAssert(game.currentQuestion.title == "")
    }
}
