//
//  TerceraVista.swift
//  NuevaAppTest
//
//  Created by David Merchan on 8/12/24.
//

import SwiftUI

struct TerceraVista: View {
    
    let colums = [GridItem(.adaptive(minimum: 60))]
    let rows: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    @State private var showHeard = true
    @State private var number = 0
    
    @State private var title = "Hello World!"
    
    var body: some View {
        VStack {
            LazyVGrid(columns: colums, spacing: 40) {
                ForEach(lista) { item in
                    Text(item.emogi).font(.title)
                }
            }.background(.blue)
            HStack {
                Button(action:  {
                    showHeard.toggle()
                    if showHeard {
                        number -= 1
                    } else {
                        number += 1
                    }
                }) {
                    if showHeard {
                        Image(systemName: "heart").foregroundColor(.red)
                    } else {
                        Image(systemName: "heart.fill").foregroundColor(.red)
                    }
                }
                Text(String(number))
            }
            Text(title).font(.largeTitle)
            TextField("", text: $title).textFieldStyle(.roundedBorder)
        
            OtraVista(texto: $title)
        }.padding(.all)
    }
}

struct OtraVista: View {
    
    @Binding var texto: String
    
    var body: some View {
        Text(texto).font(.title2).foregroundColor(.orange)
    }
}
