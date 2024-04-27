//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Vladimir Dmitriev on 27.04.24.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .buttonAppearance(color)
    }
}

#Preview {
    ButtonView(title: "Some Action", color: .red, action: {})
}
