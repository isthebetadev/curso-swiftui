//
//  ContentView.swift
//  app27TapGesture
//
//  Created by Ruben on 8/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var pulsaciones: Int = 0
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100, height: 100)
                .gesture(
                    TapGesture()
                        .onEnded({ _ in
                            print("Vista pulsada")
                            pulsaciones += 1
                        })
                )
            Text("Has pulsado el rectángulo: \(pulsaciones) veces")
            Button("Reiniciar contador") {
                pulsaciones = 0
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
