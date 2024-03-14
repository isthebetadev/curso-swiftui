//
//  ContentView.swift
//  app33SceneStorage
//
//  Created by Ruben on 14/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tweet: String = ""
    @State private var tooglePublishBestHour = false
    
    var body: some View {
        VStack {
            Form {
                TextEditor(text: $tweet)
                    .frame(width: 300, height: 300)
                Toggle("Publicar a la mejor hora", isOn: $tooglePublishBestHour)
                    .padding()
                HStack {
                    Spacer()
                    Button(
                        tooglePublishBestHour ? "Publicar a la mejor hora 🍀" : "Publicar ahora 🐥"
                    ) {
                        print("publicando...")
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
