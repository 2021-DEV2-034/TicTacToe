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
    
    internal var winnerCombinations = [(0, 1, 2), (3, 4, 5), (6, 7, 8), (0, 3, 6), (1, 4, 7), (2, 5, 8), (0, 4, 8), (2, 4, 6)]
    var player = 0
    var status = Array(repeating: PlayStep.empty, count: 9)
    var step = 1
    
    init() {}
    
    func reset() {
        player = 0
        status = Array(repeating: PlayStep.empty, count: 9)
        step = 1
    }
    
    func play(_ pos: Int, _ val: PlayStep) -> (step: Int, position: Int, value: PlayStep) {
        status[pos] = val
        step += 1
        player = player == 0 ? 1: 0
        return (step - 1, pos, val)
    }
    
    func checkWinner(_ status: [PlayStep]) -> GameWinner {
        for combination in winnerCombinations {
            if status[combination.0] != .empty && status[combination.0] == status[combination.1] && status[combination.1] == status[combination.2] {
                if status[combination.0] == .cross {
                    return .crossWin
                } else if status[combination.0] == .circle {
                    return .circleWin
                }
            }
        }
        return .gameActive
    }
}
