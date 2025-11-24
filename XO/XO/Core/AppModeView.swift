//
//  AppModeView.swift
//  XO
//
//  Created by Aviv Cohen on 20/11/2025.
//

import SwiftUI

struct AppModeView: View {
   @StateObject private var viewModel = AppModeViewModel()
   
   var body: some View {
      
      Group {
         switch viewModel.appMode {
         case .game:
            Text("Game")
         case .gameSetup:
            GameSetupView()
         }
         
      }
      .animation(.easeIn, value: viewModel.appMode)
   }
}

#Preview {
   AppModeView()
}
