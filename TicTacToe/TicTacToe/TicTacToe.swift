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
    
    func checkWinner(_ status: [PlayStep]) -> GameWinner {
        return .gameActive
    }
}
