//
//  ContentView.swift
//  app17Slider
//
//  Created by Ruben on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var iphoneCounter: Float = 0.0
    @State var isEditing: Bool = false
    var body: some View {
        VStack {
            Form {
                Slider(value: $iphoneCounter,
                       in: 0...10,
                       step: 1,
                       onEditingChanged: { (editing) in isEditing = editing},
                       minimumValueLabel: Text("Min"),
                       maximumValueLabel: Text("Max"), label: <#() -> _#>)
                Text("Selecciona número de iphones"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
