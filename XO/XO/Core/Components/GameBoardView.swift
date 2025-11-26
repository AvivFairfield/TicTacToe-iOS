//
//  GameBoardView.swift
//  XO
//
//  Created by Aviv Cohen on 27/11/2025.
//

import SwiftUI

struct GameBoardView: View {
   let board: Board
   let winningCells: [CellCoordinate]
   let onCellTap: (Int,Int) -> ()
   
   var body: some View {
      VStack(spacing: gameConstants.boardSpacing) {
         ForEach(0..<gameConstants.boardSize, id: \.self) { row in
            HStack(spacing: gameConstants.boardSpacing) {
               ForEach(0..<gameConstants.boardSize, id: \.self) { col in
                  let coord = CellCoordinate(row: row, col: col)
                  CellView(state: board[row][col], isWinningCell: winningCells.contains(coord))
                     .button(.press) {
                        withAnimation(.spring) {
                           onCellTap(row, col)
                        }
                     }
               }
            }
         }
      }
   }
   
}

#Preview {
   GameBoardView(board: .empty, winningCells: .init()) { _, _ in }
      .infinityFrame()
      .padding()
      .background(Color.appTheme.viewBackground)
}
