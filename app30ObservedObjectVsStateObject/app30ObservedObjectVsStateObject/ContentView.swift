//
//  ContentView.swift
//  app30ObservedObjectVsStateObject
//
//  Created by Ruben on 13/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Contador: \(counter)")
                .bold().font(.largeTitle)
                .padding()
            Button("Incrementar contador") {
                counter += 1
            }
            ListVideos()
            Spacer()
        }
    }
}

struct ListVideos: View {

    @StateObject private var videoViewModel = VideoViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                List(videoViewModel.videosModel, id:\.self) { video in
                    Text(video)
                }
                .navigationTitle("Videos")
                .navigationBarItems(leading:
                                        Button("Añadir", action: {
                    videoViewModel.addMoreVideos()
                }))
            }
        }
    }
}

final class VideoViewModel: ObservableObject {
    @Published var videosModel: [String] = []
    
    init() {
        videosModel = ["Clase 1: Swift",
                        "Clase 2: Xcode",
                        "Clase 3: SwiftUI"]
    }
    
    func addMoreVideos() {
        videosModel.append("Clase 4: Git")
        videosModel.append("Clase 5: CI/CD")
    }
    
}

#Preview {
    ContentView()
}
