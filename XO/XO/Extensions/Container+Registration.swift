//
//  Container+Registration.swift
//  XO
//
//  Created by Aviv Cohen on 20/11/2025.
//

import Factory

extension Container {
   var appModeStore: Factory<AppModeLiveStore> {
      self {MainActor.assumeIsolated { AppModeLiveStore() }}.singleton
   }
   var gameSetupStore: Factory<GameSetupLiveStore> {
      self {MainActor.assumeIsolated { GameSetupLiveStore() }}.singleton
   }
}


