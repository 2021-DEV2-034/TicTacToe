//
//  TicTacToeViewController.swift
//  TicTacToe
//
//  Created by AvantgardeIT on 28/6/21.
//

import UIKit

class TicTacToeViewController: UIViewController {
    
    var ticTacToe: TicTacToe?

    @IBOutlet weak var board: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ticTacToe = TicTacToe()
    }
    
    @IBAction func boxTapped(_ sender: UIButton) {
        self.play(sender: sender)
    }
}

extension TicTacToeViewController {
    private func play(sender: UIButton) {
        let position = sender.tag
        let play = ticTacToe?.play(position)
        if let winner = play?.result, winner != .gameActive {
            finishGame(winner: winner)
        }
        sender.setTitle(play?.value.rawValue, for: .normal)
        sender.setTitleColor(play?.value.color, for: .normal)
        sender.isUserInteractionEnabled = false
    }
    
    private func finishGame(winner: GameWinner) {
        var message = ""
        switch winner {
        case .crossWin:
            message = "Cross Win!"
        case .circleWin:
            message = "Circle Win!"
        case .gameActive:
            break
        case .draw:
            message = "It's a draw!"
        }
        let alert = UIAlertController(title: "Finished!", message: message, preferredStyle: .actionSheet)
        let resetAction = UIAlertAction(title: "Play again", style: .default) { _ in
            self.reset()
        }
        alert.addAction(resetAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    private func reset() {
        resetUI()
        ticTacToe?.reset()
    }
    
    func resetUI() {
        for row in board.arrangedSubviews as! [UIStackView] {
            for button in row.arrangedSubviews as! [UIButton] {
                button.setTitle("Empty", for: .normal)
                button.setTitleColor(.blue, for: .normal)
                button.isUserInteractionEnabled = true
            }
        }
    }
}
