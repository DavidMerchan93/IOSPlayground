//
//  NuevaAppTestApp.swift
//  NuevaAppTest
//
//  Created by David Merchan on 2/12/24.
//

import SwiftUI

@main
struct NuevaAppTestApp: App {
    
    @Environment(\.scenePhase) var scenePhase: ScenePhase
    var counter = CountObserver()
    
    var body: some Scene {
        WindowGroup {
            TabViewMain().environmentObject(counter)
        }.onChange(of: scenePhase) { old, new in
            switch new {
            case .active:
                print("Esta activo")
            case .inactive:
                print( "Esta inactivo")
            case .background:
                print("Esta en background")
            @unknown default:
                fatalError("Algo salio mal")
            }
        }
    }
}
