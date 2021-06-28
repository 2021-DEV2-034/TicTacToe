//
//  TicTacToeTests.swift
//  TicTacToeTests
//
//  Created by AvantgardeIT on 28/6/21.
//

import XCTest
@testable import TicTacToe

class TicTacToeTests: XCTestCase {
    
    let ticTacToe = TicTacToe()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFirstRowCrossWin() {
        let status: [PlayStep] = [.cross, .cross, .cross, .empty, .empty, .empty, .empty, .empty, .empty]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.crossWin, result, "Incorrect game winner")
    }
    
    func testFirstRowCircleWin() {
        let status: [PlayStep] = [.circle, .circle, .circle, .empty, .empty, .empty, .empty, .empty, .empty]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.circleWin, result, "Incorrect game winner")
    }
    
    func testFirstColumnCrossWin() {
        let status: [PlayStep] = [.cross, .empty, .empty, .cross, .empty, .empty, .cross, .empty, .empty]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.crossWin, result, "Incorrect game winner")
    }
    
    func testFirstColumnCircleWin() {
        let status: [PlayStep] = [.circle, .empty, .empty, .circle, .empty, .empty, .circle, .empty, .empty]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.circleWin, result, "Incorrect game winner")
    }
    
    func testFirstDiagonalCrossWin() {
        let status: [PlayStep] = [.cross, .empty, .empty, .empty, .cross, .empty, .empty, .empty, .cross]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.crossWin, result, "Incorrect game winner")
    }
    
    func testFirstDiagonalCircleWin() {
        let status: [PlayStep] = [.circle, .empty, .empty, .empty, .circle, .empty, .empty, .empty, .circle]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.circleWin, result, "Incorrect game winner")
    }

    func testFirstStepIsCross() {
        let result = ticTacToe.play(0, .cross)
        if result.step == 1 {
            XCTAssertEqual(PlayStep.cross, result.value, "The first step must be a cross")
        }
    }
}
