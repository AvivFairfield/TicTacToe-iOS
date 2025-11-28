//
//  GameResultView.swift
//  XO
//
//  Created by Aviv Cohen on 28/11/2025.
//

import SwiftUI

struct GameResultView: View {
   let gameState: GameState
   let resetGame: () -> ()
   
   var body: some View {
      VStack(spacing: 24) {
         titleView
         if let winner = gameState.winnerPlayer {
            winnerPlayerView(winner)
         }
         playAgainButton
      }
      .padding()
      .infinityFrame()
      .background(Color.appTheme.viewBackground)
      .presentationDetents([.height(gameConstants.winnerSheetHeight)])
      .presentationCornerRadius(AppCornerRadius.overall.value)
      .presentationDragIndicator(.visible)
   }
}
   
private extension GameResultView {
      var titleView: some View {
         Text(gameState.isTied ? "🤝 It's a Tie!" : "🎉 Game Over!")
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(gameState.isTied ? Color.appTheme.alternateAccent : Color.appTheme.success)
   }
   
   func winnerPlayerView(_ winner: Player) -> some View {
      HStack(spacing: 8) {
         Text("Winner:")
            .font(.title3)
            .fontWeight(.medium)
            .foregroundStyle(Color.appTheme.secondaryText)
         Image(winner.image)
            .resizable()
            .scaledToFit()
            .frame(width: 48, height: 48)
         Text(winner.cellSymbol.symbol)
            .font(.title)
            .fontWeight(.heavy)
            .fontDesign(.rounded)
            .foregroundStyle(winner.cellSymbol.color)
            .padding(.horizontal,12)
            .padding(.vertical, 4)
            .background(RoundedRectangle(cornerRadius: AppCornerRadius.overall.value).fill(winner.cellSymbol.color.opacity(0.2)))
         
      }
   }
   
   var playAgainButton: some View {
      Label("Play again", systemImage: "arrow.counterclockwise.circle.fill")
         .primaryButton()
         .button(.press) {
          resetGame()
         }
   }
}
   
#Preview {
   GameResultView(gameState: .won(.defaultPlayer)) {}
   GameResultView(gameState: .tied) {}
}
