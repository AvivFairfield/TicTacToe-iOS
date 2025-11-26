//
//  CellState.swift
//  XO
//
//  Created by Aviv Cohen on 26/11/2025.
//

import SwiftUI

enum CellState: Equatable {
   case empty
   case x
   case o
   
   var symbol: String {
      switch self {
      case .empty:
         return " "
      case .x:
         return "X"
      case .o:
         return "O"
      }
   }
   
   var color: Color {
      switch self {
      case .empty:
         return .clear
      case .x:
         return .appTheme.accent
      case .o:
         return .appTheme.alternateAccent
      }
   }
}
