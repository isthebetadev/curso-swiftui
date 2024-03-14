//
//  ContentView.swift
//  app32AppStorage
//
//  Created by Ruben on 14/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    @AppStorage("appStorageName") var appStorageName: String = ""
    
    var body: some View {
        VStack {
            Form {
                TextField("Username", text: $name)
                HStack {
                    Spacer()
                    Button("Guardar") {
                        appStorageName = name
                    }
                    .padding()
                    Spacer()
                }
            }
            .onAppear {
                name = appStorageName
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
