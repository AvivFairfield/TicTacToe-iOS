//
//  AppModeLiveStore.swift
//  XO
//
//  Created by Aviv Cohen on 20/11/2025.
//

import Foundation
import Combine

@MainActor
final class AppModeLiveStore: ObservableObject {
   @Published private(set) var appMode: AppMode = .gameSetup
   
   func goGameMode() {
      appMode = .game
   }
   
   func goSetupMode() {
      appMode = .gameSetup
   }
}
