//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Vladimir Dmitriev on 25.04.24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    private let contentViewVM = ContentViewViewModel()
    
    var body: some View {
        VStack {
            Text("Hi, \(loginViewVM.user.name)!")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .offset(x: 0, y: 200)
                
            Spacer()
            
            VStack {
                Spacer()
                
                ButtonView(
                    title: contentViewVM.buttonTitle,
                    color: .red,
                    action: contentViewVM.startTimer
                )
                
                Spacer()

                ButtonView(
                    title: "LogOut",
                    color: .blue,
                    action: loginViewVM.logout
                )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(ContentViewViewModel())
        .environmentObject(LoginViewViewModel())
}

struct ActionButtonView: View {
    @Environment(ContentViewViewModel.self) private var contentViewVM
    
    var body: some View {
        Button(action: contentViewVM.startTimer) {
            Text(contentViewVM.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(.red)
        .clipShape(.rect(cornerRadius: 20))
        .overlay (
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )
    }
}
