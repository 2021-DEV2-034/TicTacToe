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
        let status: [PlayStep] = [.cross, .cross, .cross, .empty, .empty, .empty, .empty, .empty, .empty,]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.crossWin, result, "Incorrect game winner")
    }
    
    func testFirstRowCircleWin() {
        let status: [PlayStep] = [.circle, .circle, .circle, .empty, .empty, .empty, .empty, .empty, .empty,]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.circleWin, result, "Incorrect game winner")
    }
    
    func testFirstColumnCrossWin() {
        let status: [PlayStep] = [.cross, .empty, .empty, .cross, .empty, .empty, .cross, .empty, .empty,]
        let result = ticTacToe.checkWinner(status)
        XCTAssertEqual(GameWinner.crossWin, result, "Incorrect game winner")
    }
}
