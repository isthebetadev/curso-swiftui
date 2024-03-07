//
//  ContentView.swift
//  app19Forms
//
//  Created by Ruben on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var deviceName: String = "iPhpne 15"
    @State var isWifiOn: Bool = false
    @State var date: Date = Date()
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Device Information")) {
                    TextField("Device name", text: $deviceName)
                }
                Section(header: Text("Settings")) {
                    Toggle("Wi-Fi", isOn: $isWifiOn)
                    DatePicker("Date", selection: $date)
                }
                Section(
                    footer:
                        HStack {
                            Spacer()
                            Label("Version 1.0", image: "iphone")
                            Spacer()
                        }
                ) {
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
