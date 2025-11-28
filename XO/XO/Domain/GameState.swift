//
//  GameState.swift
//  XO
//
//  Created by Aviv Cohen on 28/11/2025.
//

import Foundation

enum GameState: Equatable {
   case playing
   case won(Player)
   case tied
   
   var isGameOver: Bool {
      switch self {
      case .playing: false
      case .won, .tied: true
      
      }
   }
   
   var isTied: Bool {
      self == .tied
   }
   
   var winnerPlayer: Player? {
      switch self {
         case .won(let player): player
      case .playing, .tied: nil
      }
   }
}
