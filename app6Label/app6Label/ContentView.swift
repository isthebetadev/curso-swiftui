//
//  ContentView.swift
//  app6Label
//
//  Created by Ruben on 27/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Label("Comprobar coche cerrado", systemImage: "questionmark.key.filled")
                .font(.title2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
