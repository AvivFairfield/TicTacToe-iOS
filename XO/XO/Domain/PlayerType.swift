//
//  PlayerType.swift
//  XO
//
//  Created by Aviv Cohen on 23/11/2025.
//

import Foundation

enum PlayerType {
   case human
   case bot
}

extension PlayerType {
   var isHuman: Bool {
      self == .human
   }
   
   var isBot: Bool {
      self == .bot
   }
}
