//
//  GameSetupViewModel.swift
//  XO
//
//  Created by Aviv Cohen on 24/11/2025.
//

import SwiftUI
import Combine
import Factory

@MainActor
final class GameSetupViewModel: ObservableObject {
   @Published var player1: PlayerProfile = .defaultPlayer1 {
      didSet {updatePlayer1(with: player1)}
   }
   
   @Published var player2: PlayerProfile = .defaultPlayer2 {
      didSet {updatePlayer1(with: player2)}
   }
   
   @Published var selectedDifficulty: Difficulty = .medium {
      didSet {
         updateDifficulty (with: selectedDifficulty)
      }
   }
   
   @Published var selectedFirstTurn: FirstTurn = .random {
      didSet {
         updateFirstTurn (with: selectedFirstTurn)
      }
   }
   
   @Injected(\.appModeStore) var appModeStore
   @Injected(\.gameSetupStore) var gameSetupStore
   
   init() {
      getSetupInfo()

   }
   func startGame() {
      appModeStore.goGameMode()
   }
}

private extension GameSetupViewModel {
   func getSetupInfo() {
      player1 = gameSetupStore.player1
      player2 = gameSetupStore.player2
      selectedDifficulty = gameSetupStore.selectedDifficulty
      selectedFirstTurn = gameSetupStore.selectedFirstTurn
   }
   
   func updatePlayer1(with player1: PlayerProfile) {
      gameSetupStore.player1 = player1
   }
   
   func updatePlayer2(with player2: PlayerProfile) {
      gameSetupStore.player2 = player2
   }
   
   func updateDifficulty(with selectedDifficulty: Difficulty) {
      gameSetupStore.selectedDifficulty = selectedDifficulty
   }
   
   func updateFirstTurn(with selectedFirstTurn: FirstTurn) {
      gameSetupStore.selectedFirstTurn = selectedFirstTurn
   }
      
   }

