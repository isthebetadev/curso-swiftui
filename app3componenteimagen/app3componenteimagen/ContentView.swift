//
//  ContentView.swift
//  app3componenteimagen
//
//  Created by Ruben on 26/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("youtube")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 96, height: 68)
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    ContentView()
}
