//
//  ContentView.swift
//  app18LazyVgrid&Hgrid
//
//  Created by Ruben on 7/3/24.
//

import SwiftUI

struct ContentView: View {
    
    var numbers = 1...500
    var gridItems = [GridItem(.fixed(100)),
                     GridItem(.fixed(100)),
                     GridItem(.fixed(100))]
    
    var body: some View {
        VStack {
            /* VERTICAL GRID
            ScrollView {
                
                LazyVGrid(
                    columns: gridItems,
                    content: {
                        ForEach(numbers, id: \.self) {
                            number in
                            VStack {
                                Circle().frame(height: 50)
                                Text("\(number)")
                            }
                        }
                    })

            }
            */
            
            // HORIZONTAL GRID
            ScrollView(.horizontal) {
                
                LazyHGrid(
                    rows: gridItems,
                    content: {
                        ForEach(numbers, id: \.self) {
                            number in
                            VStack {
                                Circle().frame(height: 50)
                                Text("\(number)")
                            }
                        }
                    })

            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
