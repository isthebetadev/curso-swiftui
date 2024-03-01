//
//  ContentView.swift
//  app11DatePicker
//
//  Created by Ruben on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    @State var date: Date = Date()
    var body: some View {
        VStack {
            //DatePicker("Selecciona fecha", selection: $date)
            Form {
                DatePicker("Fecha", selection: $date, in: date..., displayedComponents: .date)
                Text(date, style: .date)
                    .fontWeight(.bold)
            }

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
