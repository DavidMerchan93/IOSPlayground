//
//  ContentView.swift
//  NuevaAppTest
//
//  Created by David Merchan on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showVentanaModal: Bool = false
    
    var body: some View {
        VStack {
            Button("Ventana Modal") {
                showVentanaModal.toggle()
            }.sheet(isPresented: $showVentanaModal) {
                NabigationView()
            }
        }
    }
}

#Preview {
    ContentView()
}
