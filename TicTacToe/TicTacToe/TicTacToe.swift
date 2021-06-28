//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by AvantgardeIT on 28/6/21.
//

import Foundation

enum GameWinner {
    case crossWin
    case circleWin
    case gameActive
}

enum PlayStep: Int {
    case empty = 0
    case cross = 1
    case circle = 2
}

class TicTacToe {
    
    internal var winnerCominations = [(0, 1, 2), (3, 4, 5), (6, 7, 8), (0, 3, 6), (1, 4, 7), (2, 5, 8), (0, 4, 8), (2, 4, 6)]
    var player = 1
    var status = Array(repeating: PlayStep.empty, count: 9)
    var step = 1
    
    init() {
        
    }
    
    func reset() {
        player = 1
        status = Array(repeating: PlayStep.empty, count: 9)
        step = 1
    }
    
    func play(_ pos: Int, _ val: PlayStep) {
        
    }
    
    func checkWinner(_ status: [PlayStep]) -> GameWinner {
        return .gameActive
    }
}
