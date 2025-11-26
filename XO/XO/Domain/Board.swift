//
//  Board.swift
//  XO
//
//  Created by Aviv Cohen on 27/11/2025.
//

import Foundation

typealias Board = [[CellState]]

extension Board {
   static var empty: Self {
      .init(repeating: .init(repeating: .empty, count: gameConstants.boardSize), count: gameConstants.boardSize)
   }
}
