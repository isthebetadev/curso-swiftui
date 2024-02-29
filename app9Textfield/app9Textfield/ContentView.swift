//
//  ContentView.swift
//  app9Textfield
//
//  Created by Ruben on 29/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            
            Image("logoJuegoMesa")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text("Bienvenido")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Text("Seguro que estás deseando empezar una nueva partida...")
                .font(.headline)
                .padding(15)
                
            
            TextField("Usuario", text: $username)
                .keyboardType(.emailAddress)
                .autocorrectionDisabled()
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6.0)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: username, perform: { value in print("Username: \(username)")
                })
           
            SecureField("Contraseña", text: $password)
                .keyboardType(.emailAddress)
                .autocorrectionDisabled()
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6.0)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: password, perform: { value in print("Password: \(password)")
                })
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
