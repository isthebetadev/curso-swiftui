//
//  ContentView.swift
//  app22FullscreenCover&Sheet
//
//  Created by Ruben on 8/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .imageScale(.large)
                .foregroundStyle(.mint)
            Text("Hello, world!")
                .fontWeight(.bold)
                .foregroundStyle(.mint)
                .font(.title3)
        }.fullScreenCover(isPresented: $isPresented, 
                          onDismiss: {isPresented = false}, 
                          content: {
                                ZStack {
                                    Color.purple.ignoresSafeArea()
                                    Button("Bienvenido") {
                                        isPresented = false
                                    }
                                }
        })
    }
}

#Preview {
    ContentView()
}
