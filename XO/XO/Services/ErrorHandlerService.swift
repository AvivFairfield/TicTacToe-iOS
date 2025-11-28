//
//  ErrorHandlerService.swift
//  XO
//
//  Created by Aviv Cohen on 28/11/2025.
//

import Foundation

protocol ErrorHandlerProtocol {
   func handle(_ error: GameError)
   func logError(_ error: GameError)
}

final class ErrorHandlerService: ErrorHandlerProtocol {
   func handle(_ error: GameError) {
      logError(error)
   }
   
   func logError(_ error: GameError) {
#if DEBUG
      print("🎮 Game Error: \(error.errorDescription ?? "Unknown Error")")
#endif
   }
   
   
}
