//
//  ContentView.swift
//  app29StateVsBinding
//
//  Created by Ruben on 13/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int = .zero
    
    var body: some View {
        CounterView(counter: $counter)
    }
}

struct CounterView: View {
    
    @Binding var counter: Int
    
    var body: some View {
        VStack() {
            Text("Valor: \(counter)")
                .font(.largeTitle)
            Button("Incrementar contador") {
                counter += 1
            }
        }
    }
}

#Preview {
    ContentView()
}
