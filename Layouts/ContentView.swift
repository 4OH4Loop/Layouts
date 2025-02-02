//
//  ContentView.swift
//  Layouts
//
//  Created by Carolyn Ballinger on 2/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(minHeight: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: 2)
                .padding()
            
            HStack {
                Button("Awesome") {
                    let messageString = ["You Are Awesome!", "You Are Great!"]
                    message = messageString[0]
                }
                Button("Great!") {
                    let messageString = ["You Are Awesome!", "You Are Great!"]
                    message = messageString[1]
                }

            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .border(.orange, width: 5)
            }
            
        }
    }

#Preview {
    ContentView()
}
