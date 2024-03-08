//
//  ContentView.swift
//  app21NavigationViewYNavigationLink
//
//  Created by Ruben on 8/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack {
                List {
                    NavigationLink("Option 1 - Nav Link", destination: Text("Some information with navigation link"))
                    NavigationLink("Option 2 - Nav Link Button", destination: Button("Tap me!", action: {
                        print("Button pressed! ")
                    }).background(.red)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                        .font(.title2)
                        .fontWeight(.bold)
                    )
                    Text("Option 3")
                    Text("Option 4")
                }
                .navigationTitle("Menú")
                .navigationBarTitleDisplayMode(.inline)
                //.toolbar(.hidden) -> ocultar el título
                .navigationBarItems(trailing: Button("Done", action: {
                    print("Navigation View Button -> DONE")
                }))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
