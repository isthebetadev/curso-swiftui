//
//  ContentView.swift
//  app15Toogle
//
//  Created by Ruben on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isSuscribing: Bool = false
    
    var body: some View {
        VStack {
            Form {
                Toggle("Suscribirse al boletín de noticias", isOn: $isSuscribing)
                if isSuscribing {
                    Text("✅ Usuario suscrito al boletín de noticias")
                        .font(.footnote)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                } else {
                    Text("❌ El ususario no desea suscribirse al boletín de noticias")
                        .font(.footnote)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
