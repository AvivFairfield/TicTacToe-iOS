//
//  AppModeViewModel.swift
//  XO
//
//  Created by Aviv Cohen on 20/11/2025.
//

import Foundation
import Combine
import Factory

final class AppModeViewModel: ObservableObject {
   @Published var appMode: AppMode = .gameSetup
   private var cancellables = Set<AnyCancellable>()
   @Injected(\.appModeStore) var appModeStore
   
   init () {
      setSubscribers()
   }
   
}


private extension AppModeViewModel {
   func setSubscribers() {
      appModeStore.$appMode
         .receive(on: DispatchQueue.main)
         .sink {[weak self] _ in
            guard let self else { return }
            updateAppMode()
         }
         .store(in: &cancellables)
   }
   
   func updateAppMode() {
      appMode = appModeStore.appMode
   }
}
