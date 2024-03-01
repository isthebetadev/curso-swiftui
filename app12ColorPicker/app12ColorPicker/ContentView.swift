//
//  ContentView.swift
//  app12ColorPicker
//
//  Created by Ruben on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var color: Color = Color.blue
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundStyle(color)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
           ColorPicker("Selecciona un color", selection: $color)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
