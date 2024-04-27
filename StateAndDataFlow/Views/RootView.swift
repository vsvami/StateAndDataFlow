//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Vladimir Dmitriev on 25.04.24.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        Group {
            if loginViewVM.user.isLoggedIn {
                ContentView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    RootView()
        .environmentObject(LoginViewViewModel())
}
