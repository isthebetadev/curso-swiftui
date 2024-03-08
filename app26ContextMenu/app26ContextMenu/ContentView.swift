//
//  ContentView.swift
//  app26ContextMenu
//
//  Created by Ruben on 8/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("¿Y si pruebas a mantener pulsado sobre este texto? 🤔")
                .font(.title3)
                .padding()
                .contextMenu(ContextMenu(menuItems: {
                    Button("SwiftUI") {
                        print("Estoy aprendiendo sobre SwiftUI")
                    }
                    Button("Xcode") {
                        print("Estoy aprendiendo sobre Xcode")
                    }
                    Button(action: {print("Quiero aprender Swift")}, label: {
                        Label("Swift", systemImage: "iphone")
                    })
                }))
        }
    }
}

#Preview {
    ContentView()
}
