//
//  ContentView.swift
//  app35SwipeActionsYRefreshable
//
//  Created by Ruben on 20/3/24.
//

import SwiftUI

struct ContentView: View {
    
    struct Device {
        let name: String
        let systemImage: String
    }
    
    let arrayOfDevices = [
        Device(name: "iphone", systemImage: "iphone"),
        Device(name: "ipad", systemImage: "ipad"),
        Device(name: "pc", systemImage: "pc"),
        Device(name: "4k", systemImage: "4k.tv"),
        Device(name: "ipod", systemImage: "ipod"),
        Device(name: "laptop", systemImage: "laptopcomputer")
    ]
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(arrayOfDevices, id: \.name) { device in
                        Label(device.name, systemImage: device.systemImage)
                            .swipeActions() {
                                Button("Favorito", systemImage: "star.fill") {
                                    print("Añadido a favorito \(device.name)")
                                }
                                .tint(.yellow)
                                Button("Compartir", systemImage: "square.and.arrow.up.fill") {
                                    print("Compartiendo \(device.name)")
                                }
                                .tint(.green)
                            }
                            .swipeActions(edge: .leading) {
                                Button("Borrar", systemImage: "trash.fill") {
                                    print("Borrando  \(device.name)")
                                }
                                .tint(.red)
                            }
                    }
                }
                .navigationTitle("Devices")
                .refreshable {
                    print("recargar información")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
