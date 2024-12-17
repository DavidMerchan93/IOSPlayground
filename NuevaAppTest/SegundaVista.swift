//
//  SegundaVista.swift
//  NuevaAppTest
//
//  Created by David Merchan on 8/12/24.
//

import SwiftUI

struct SegundaVista: View {
    
    var texto: String
    
    var body: some View {
        VStack {
            Text("Soy la segunda vista").navigationTitle("Segunda vista")
            Text("Texto del parametro: \(texto)")
        }
        
    }
}

#Preview {
    SegundaVista(texto: "Texto")
}
