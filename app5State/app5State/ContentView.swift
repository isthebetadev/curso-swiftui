//
//  ContentView.swift
//  app5State
//
//  Created by Ruben on 27/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var euroCounter = 0
    
    var body: some View {
        HStack {
            Image(systemName: "eurosign.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 45)
            Text("Monedero de euros")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
        }
        VStack {
            Text("Tenemos: \(euroCounter) €")
            Button("Añadir al monedero") {
                euroCounter += 1
            }
            .padding(5.0)
            .border(Color.blue)
            .background(Color.mint)
            Button("Vaciar monedero") {
                euroCounter = 0
            }
            .padding(.all, 5.0)
            .border(Color.blue)
            .background(Color.red)
        }
        
    }
}

#Preview {
    ContentView()
}
