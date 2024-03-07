//
//  ContentView.swift
//  app16Stepper
//
//  Created by Ruben on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var iphoneCounter: Int = 1
    @State var ipadCounter: Int = 1
    
    var body: some View {
        VStack {
            Form {
                Text("Lista de la compra en Apple Store")
                    .font(.headline)
                    .foregroundStyle(.blue)
                    .bold()
                Stepper("iPhone: \(iphoneCounter)",
                        value: $iphoneCounter,
                        in: 1...5)
                Stepper("iPad: \(ipadCounter)") {
                    ipadCounter += 1
                    print("Aumentando número de ipads a comprar... Ahora son: \(ipadCounter)")
                } onDecrement: {
                    if ipadCounter > 1 {
                        ipadCounter -= 1
                        print("Decrementando número de ipads a comprar... Ahora son: \(ipadCounter)")
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
