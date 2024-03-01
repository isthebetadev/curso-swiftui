//
//  ContentView.swift
//  app13ProgressView
//
//  Created by Ruben on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var progress: Float = 0
    var body: some View {
        VStack {
        
            ProgressView(value: progress)
            
            Button("Aumentar ProgressBar") {
                progress += 0.10
                print("Progreso: \(progress)")
            }.padding(.top, 40)
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
