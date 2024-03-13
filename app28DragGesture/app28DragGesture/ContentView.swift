//
//  ContentView.swift
//  app28DragGesture
//
//  Created by Ruben on 13/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var dragOffset: CGSize = .zero
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100, height: 100)
                .offset(x: dragOffset.width, y: dragOffset.height)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            print(value)
                            self.dragOffset = value.translation
                        })
                        .onEnded({ _ in
                            self.dragOffset = .zero
                        })
                )
        }
    }
}

#Preview {
    ContentView()
}
