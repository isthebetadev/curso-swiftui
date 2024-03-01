//
//  ContentView.swift
//  app10TextEditor
//
//  Created by Ruben on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int = 0
    @State var twet: String = ""
    
    var body: some View {
        VStack {
            
            TextEditor(text: $twet)
                .font(.title)
                .textInputAutocapitalization(.none)
                .autocorrectionDisabled()
                .foregroundStyle(.blue)
                .padding()
                .onChange(of: twet, perform: {
                    value in counter = value.count
                })
            
            Text("Caracteres: \(counter)")
                .foregroundStyle(counter <= 150  ? .green : .red)
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
