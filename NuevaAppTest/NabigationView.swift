//
//  NabigationView.swift
//  NuevaAppTest
//
//  Created by David Merchan on 8/12/24.
//

import SwiftUI

// El navigation view se hereda en las demas vista
struct NabigationView: View {
    
    @State private var texto: String = ""
    
    var body: some View {
        NavigationView {
            
            VStack {
                Text("Primera Vista")
                    .navigationTitle("Home")
                    .navigationBarItems(leading: HStack {
                        NavigationLink(destination: SegundaVista(texto: texto)) {
                            Image(systemName: "camera")
                        }
                        NavigationLink(destination: TerceraVista()) {
                            Image(systemName: "plus")
                        }
                    })
                
                TextField("Nuevo mensaje", text: $texto)
                
                NavigationLink(destination: SegundaVista(texto: texto)) {
                    Text("Ir a la segunda vista")
                }
            }
        }
    }
}
