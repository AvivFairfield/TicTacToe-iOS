//
//  AnalyticsService.swift
//  XO
//
//  Created by Aviv Cohen on 28/11/2025.
//

import Foundation

protocol AnalyticsProtocol {
   func trackGameStart(difficulty: Difficulty, firstTurn: FirstTurn)
   func trackMove(player: PlayerType, position: CellCoordinate)
   func trackGameEnd(result: GameResult)
   func trackError(_ error: GameError)
}

final class AnalyticsService: AnalyticsProtocol {
   func trackMove(player: PlayerType, position: CellCoordinate) {
      #if DEBUG
      print("Tracking move for player: \(player) at position: \(position.row), \(position.col)")
      #endif
   }
   
   func trackGameEnd(result: GameResult) {
      #if DEBUG
      print("Tracking game end with result: \(result)")
#endif
   }
   
   func trackError(_ error: GameError) {
      #if DEBUG
      print("Tracking error: \(error.errorDescription ?? "Unknown error")")
      #endif
   }
   
   func trackGameStart(difficulty: Difficulty, firstTurn: FirstTurn) {
      #if DEBUG
      print("Tracking game start with difficulty: \(difficulty) and first turn: \(firstTurn)")
#endif
   }
  
}

      
