//
//  ContentView.swift
//  app8Button
//
//  Created by Ruben on 27/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: { print("Te has suscrito...")}, label: {
                Text("Suscríbete".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
                
            Button(
                action:
                    { 
                        print("Te has suscrito...")
                    }, 
                label: 
                    {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                            .shadow(radius: 10)
                            .overlay(Image(systemName: "hand.thumbsup.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 70, weight: .bold)))
                    }
            )
            
        }
    }
}

#Preview {
    ContentView()
}
