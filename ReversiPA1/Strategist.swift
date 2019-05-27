//
//  Strategist.swift
//  ReversiPA1
//
//  Created by Bartosz on 27/05/2019.
//  Copyright © 2019 Bartosz Bilski. All rights reserved.
//

import GameplayKit

struct Strategist {
    private let strategist: GKMinmaxStrategist = {
        let strategist = GKMinmaxStrategist()
        
        strategist.maxLookAheadDepth = 3
        return strategist
    }()
    
    var game: Game {
        didSet {
            strategist.gameModel = game
        }
    }
    
    func bestMoveForAI() -> (Int, Int)? {
        if let move = strategist.bestMove(for: game.currentPlayer) as? Move {
            return (move.x, move.y)
        }
        
        return nil
    }
}
