//
//  FirstTurn.swift
//  XO
//
//  Created by Aviv Cohen on 23/11/2025.
//

import Foundation

enum FirstTurn: String, CaseIterable {
   case you
   case opponent
   case random
}

extension FirstTurn: CustomStringConvertible {
   var description: String {
      self.rawValue.capitalized
   }
}

