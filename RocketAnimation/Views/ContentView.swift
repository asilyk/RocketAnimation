//
//  ContentView.swift
//  RocketAnimation
//
//  Created by Alexander on 04.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var rocketPosition = 2 * UIScreen.main.bounds.width

    var body: some View {
        VStack {
            ButtonView(rocketPosition: $rocketPosition)

            Spacer()

            RocketView()
                .frame(width: 250, height: 250)
                .offset(y: rocketPosition)

            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
