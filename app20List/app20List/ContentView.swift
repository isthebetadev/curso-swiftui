//
//  ContentView.swift
//  app20List
//
//  Created by Ruben on 8/3/24.
//

import SwiftUI

struct Device {
    let title: String
    let imageName: String
}

let house = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac Mini", imageName: "macmini"),
    Device(title: "Display", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv")
]

let work = [
    Device(title: "iPhone", imageName: "iphone"),
    Device(title: "iPad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods")
]

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                Section(header: Text("Home")) {
                    ForEach(house, id: \.title) { device in
                        Label(device.title, systemImage: device.imageName)
                    }
                }
                Section(header: Text("Work")) {
                    ForEach(work, id: \.title) { device in
                        Label(device.title, systemImage: device.imageName)
                    }
                }
            }.listStyle(SidebarListStyle())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
