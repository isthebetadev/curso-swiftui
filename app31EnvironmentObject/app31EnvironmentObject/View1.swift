//
//  ContentView.swift
//  app31EnvironmentObject
//
//  Created by Ruben on 14/3/24.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var counter: Int = 0
}

struct View1: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            
        }
    }
}

#Preview {
    View1()
}
