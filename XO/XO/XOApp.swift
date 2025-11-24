//
//  XOApp.swift
//  XO
//
//  Created by Aviv Cohen on 20/11/2025.
//

import SwiftUI

@main
struct XOApp: App {
   @AppStorage(UserDefaultKeys.isDarkMode) private var isDarkMode: Bool = true
   var body: some Scene {
      WindowGroup {
         AppModeView()
            .preferredColorScheme(isDarkMode ? .dark : .light)
      }
   }
}
