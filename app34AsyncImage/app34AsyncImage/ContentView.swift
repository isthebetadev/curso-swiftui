//
//  ContentView.swift
//  app34AsyncImage
//
//  Created by Ruben on 20/3/24.
//

import SwiftUI

struct ContentView: View {
    
    private let imageUrl = URL(string: "https://media.revistagq.com/photos/6266a08026711052931a9e24/16:9/w_1920,c_limit/193-1939340_rick-and-morty-stills.png")
    
    var body: some View {
        VStack {
            Text("Mostrando una imagen directamente con la URL")
                .font(.largeTitle)
                .bold()
                .padding()
            // AsyncImage(url: imageUrl!) ocupa toda la pantalla
            AsyncImage(url: imageUrl!) { image in
                image
                    .image?.resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
