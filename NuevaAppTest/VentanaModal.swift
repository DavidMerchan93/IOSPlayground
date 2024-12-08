//
//  VentanaModal.swift
//  NuevaAppTest
//
//  Created by David Merchan on 8/12/24.
//

import SwiftUI

struct VentanaModal: View {
    
    @Environment(\.presentationMode) var back
    
    var body: some View {
        ZStack {
            Color.gray.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Soy una ventana modal")
                    .font(.headline)
                    .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                    .padding()
                Button("Cerrar") {
                    back.wrappedValue.dismiss()
                }.foregroundStyle(Color.white)
                    .padding(16)
                    .background(Color.blue)
                    .clipShape(Circle())
                
            }
        }
    }
}

#Preview {
    VentanaModal()
}
