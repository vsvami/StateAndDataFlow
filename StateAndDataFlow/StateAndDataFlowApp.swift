//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Vladimir Dmitriev on 25.04.24.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var loginViewVM = LoginViewViewModel(
        user: StorageManager.shared.fetchData()
    )
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environmentObject(loginViewVM)
    }
}
