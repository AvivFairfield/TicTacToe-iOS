//
//  GameError.swift
//  XO
//
//  Created by Aviv Cohen on 28/11/2025.
//

import Foundation

enum GameError: Error {
   case invalidMove(row: Int, col: Int)
   case gameNotInProgress
   case botMoveFailure
   case invalidGameState
   
}

extension GameError: LocalizedError {
   var errorDescription: String? {
      switch self {
      case .invalidMove(row: let row, col: let col):
         return "Invalid move: (\(row), \(col))"
      case .gameNotInProgress:
         return "The game is not in progress"
      case .botMoveFailure:
         return "The bot failed to make a move"
         case .invalidGameState:
         return "The game state is invalid"
      }
   }
}
