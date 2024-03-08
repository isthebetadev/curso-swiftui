//
//  ContentView.swift
//  app24Popup
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
                .foregroundStyle(.tint)
                .tint(.mint)
            Button("Acceder a la aplicación") {
                isPresented = true
            }.foregroundStyle(.mint)
                .font(.title3)
        }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text("Confirme el acceso como usuario"), message: Text("Si no quiere accer cancele la acción"), primaryButton: Alert.Button.default(Text("Aceptar"), action: {print("Botón aceptar pulsado")}), secondaryButton: .destructive(Text("Cancelar")))
        })
    }
}

#Preview {
    ContentView()
}
