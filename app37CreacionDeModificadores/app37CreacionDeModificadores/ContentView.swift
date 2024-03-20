//
//  ContentView.swift
//  app37CreacionDeModificadores
//
//  Created by Ruben on 20/3/24.
//

import SwiftUI


struct NewButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(Color.mint)
            .clipShape(Circle())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Este es un modificador creado para un botón 🛠️")
                .padding()
                .bold()
                .font(.title2)
            Button("OK") {
                print("Se ha pulsado el botón")
            }
            .modifier(NewButtonModifier())
        }
        
    }
}

#Preview {
    ContentView()
}
