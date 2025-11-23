//
//  Difficulty.swift
//  XO
//
//  Created by Aviv Cohen on 23/11/2025.
//

import Foundation

enum Difficulty: String, CaseIterable {
   case easy
   case medium
   case hard
}

extension Difficulty: CustomStringConvertible {
   var description: String {
      self.rawValue.capitalized
   }
}
