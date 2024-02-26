//
//  ContentView.swift
//  app1presentacioncurso
//
//  Created by Ruben on 26/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 8) {
                
                Text("Siguiendo")
                    .font(.largeTitle)
                    .bold()
                
                Text("Canales recomendados")
                    .foregroundStyle(.gray)
                
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 118, height: 68)
                    VStack(alignment: .leading) {
                        HStack {
                            Circle()
                                .frame(width: 18,height: 18)
                                .foregroundColor(.green)
                            Text("username")
                                .font(.headline)
                        }
                        Text("aprendiendo swiftui")
                            .foregroundStyle(.gray)
                        Text("💪🏻")
                    }
                }
            }
            
            Text("SUPERPONIENDO TEXTO CON ZSTACK")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.red)
                .underline()
                .rotationEffect(.degrees(-20))
        }
        
    }
}

#Preview {
    ContentView()
}
