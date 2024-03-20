//
//  ContentView.swift
//  app33SceneStorage
//
//  Created by Ruben on 14/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @SceneStorage("tweet") private var tweet: String = ""
    @SceneStorage("toogle_publish_best_hour") private var tooglePublishBestHour = false
    
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
