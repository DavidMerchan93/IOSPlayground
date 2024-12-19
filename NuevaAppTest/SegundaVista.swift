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
        NavigationView {
            VStack {
                Text("Soy la segunda vista").navigationTitle("Segunda vista")
                Text("Texto del parametro: \(texto)")
                    .onAppear {
                        print("Aparecio el texto")
                    }.onDisappear {
                        print("Se oculto el texto")
                    }
                
                List(lista) { item in
                    NavigationLink(
                        destination: Emoji(emoji: item.emogi)
                    ) {
                        HStack {
                            Emoji(emoji: item.emogi)
                            Text(item.nombre).font(.subheadline)
                        }
                    }
                }
            }
        }
    }
}

struct Emoji: View {
    
    let emoji: String
    
    var body: some View {
        ZStack {
            Text(emoji)
                .font(.largeTitle)
                .frame(width: 60, height: 60)
                .overlay(
                    Circle().stroke(Color.pink, lineWidth: 3)
                )
            Spacer()
        }
    }
}
