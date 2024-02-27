//
//  ContentView.swift
//  app4IconosSFSymbols
//
//  Created by Ruben on 27/2/24.
//

import SwiftUI

let miMascota = "Idril"

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "dog.circle.fill")
                //.renderingMode(.original) -> para que salga con el color original del icono en sf symbols
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .foregroundColor(.yellow)
            Text("Adiestramiento para la mascota \(miMascota)")
                .bold()
                .font(.largeTitle)
        }
    }
}

#Preview {
    ContentView()
}
