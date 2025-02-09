//
//  ContentView.swift
//  Layouts
//
//  Created by Carolyn Ballinger on 2/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You"
    var body: some View {
        
        VStack {
           Text("Awesome!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.indigo)
                
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(minHeight: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great!") {
                    messageString = "You Are Great!"
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .padding()
            
            Rectangle()
                .frame(height: 0)
                .background(.indigo)
                
        }
    }
    
}


#Preview {
    ContentView()
}
