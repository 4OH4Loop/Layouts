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
                Text("You Have Skills!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.goldBC)
                    .padding()
                    .background(Color("maroon - BC"))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(minHeight: 150)
                    .frame(maxWidth: .infinity)
                //                .border(.orange, width: 2)
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
                //            .border(.orange, width: 5)
                .padding()
                .tint(.vermillion)
            }
            .background(
                Gradient(colors: [.white, .blue, .red])
            )
        }
            
        }


#Preview {
    ContentView()
}
