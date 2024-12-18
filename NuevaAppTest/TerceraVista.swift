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
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: colums, spacing: 40) {
                ForEach(lista) { item in
                    Text(item.emogi).font(.title)
                }
            }
        }
    }
}
