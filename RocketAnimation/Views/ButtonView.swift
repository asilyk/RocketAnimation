//
//  ButtonView.swift
//  RocketAnimation
//
//  Created by Alexander on 05.05.2022.
//

import SwiftUI

struct ButtonView: View {
    @State private var isPresented = false
    @Binding var rocketPosition: CGFloat

    var body: some View {
        Button(action: buttonAction) {
            Text(isPresented ? "Hide Rocket" : "Show Rocket")
                .bold()
                .foregroundColor(.white)

            Spacer()

            Image(systemName: isPresented ? "eye.slash" : "eye")
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 200)
        .background(Color.accentColor)
        .cornerRadius(25)
    }

    private func buttonAction() {
        withAnimation(.easeOut(duration: 0.6)) {
            isPresented.toggle()
            rocketPosition -= 2 * UIScreen.main.bounds.width
        }
        if rocketPosition < -2 * UIScreen.main.bounds.width {
            rocketPosition = 0
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(rocketPosition: .constant(5))
    }
}
