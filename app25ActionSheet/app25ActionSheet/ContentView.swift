//
//  ContentView.swift
//  app25ActionSheet
//
//  Created by Ruben on 8/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("Suscribirse a las noticias de al app")
            Button("Si quiero!") {
                isPresented = true
            }
        }
        .actionSheet(isPresented: $isPresented, content: {
            ActionSheet(title: Text("Estás a un paso de recibir todas las novedades de la aplicación"),
                        message: Text("Elije la opción que quieras"),
                        buttons: [
                            ActionSheet.Button.default(
                                Text("Ok"),
                                action: {
                                    print("Aceptado recibir noticias")
                                }
                            ),
                            .default(Text("Me lo estoy pensando...")),
                            .destructive(Text("Pues va a ser que no"))
                        ]
        )})
    }
}

#Preview {
    ContentView()
}
