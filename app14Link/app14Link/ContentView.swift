//
//  ContentView.swift
//  app14Link
//
//  Created by Ruben on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // Link("Ir al perfil de Github de isthebetadev", destination: URL(string: "https://github.com/isthebetadev")!) -> Enlace básico
            
            Link(destination: URL(string: UIApplication.openSettingsURLString)!, label: {
                Label("Abrir ajustes del iPhone", systemImage: "gear")
                    .font(.headline)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(.buttonBorder)
            })
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
