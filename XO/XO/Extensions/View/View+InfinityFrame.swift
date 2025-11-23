//
//  View+InfinityFrame.swift
//  XO
//
//  Created by Aviv Cohen on 23/11/2025.
//

import SwiftUI

extension View {
   func infinityFrame() -> some View {
      self
         .frame(maxWidth: .infinity, maxHeight: .infinity)
   }
}
