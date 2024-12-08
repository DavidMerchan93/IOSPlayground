//
//  NabigationView.swift
//  NuevaAppTest
//
//  Created by David Merchan on 8/12/24.
//

import SwiftUI

// El navigation view se hereda en las demas vista
struct NabigationView: View {
    var body: some View {
        NavigationView {
            
            VStack {
                Text("Primera Vista")
                    .navigationTitle("Home")
                    .toolbar {
                        NavigationLink(destination: SegundaVista()) {
                            Image(systemName: "camera")
                        }
                        NavigationLink(destination: TerceraVista()) {
                            Image(systemName: "plus")
                        }
                    }
                NavigationLink(destination: SegundaVista()) {
                    Text("Ir a la segunda vista")
                }
            }
        }
    }
}
