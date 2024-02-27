//
//  ContentView.swift
//  app7TextYModificadores
//
//  Created by Ruben on 27/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world! ")
                .font(.title3)
            + Text("¡Hola mundo! ")
                .font(.title2)
                .foregroundStyle(.secondary)
            + Text("مرحبا بالعالم! ")
                .bold()
                .underline()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
