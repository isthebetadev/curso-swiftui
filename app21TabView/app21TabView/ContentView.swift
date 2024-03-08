//
//  ContentView.swift
//  app21TabView
//
//  Created by Ruben on 8/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                HomeView()
                    .font(.title)
                    .fontWeight(.bold)
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Home")
                    }
                ProfileView()
                    .font(.title)
                    .fontWeight(.bold)
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("Profile")
                    }
            }.tint(.indigo)
        }
    }
}

#Preview {
    ContentView()
}

struct HomeView: View {
    var body: some View {
        Text("This is the HOME page")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("This is the PROFILE page") 
    }
}
