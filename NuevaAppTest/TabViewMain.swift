//
//  TabViewMain.swift
//  NuevaAppTest
//
//  Created by David Merchan on 17/12/24.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView {
            SegundaVista(texto: "Segunda vista").tabItem {
                Label("Segunda vista", systemImage:"camera")
            }
            TerceraVista().tabItem {
                Label("Tercera vista", systemImage:"plus")
            }
            CuartaVista().tabItem {
                Label("Combina", systemImage: "heart")
            }
        }
    }
}

