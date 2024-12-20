//
//  CuartaVista.swift
//  NuevaAppTest
//
//  Created by David Merchan on 20/12/24.
//

import SwiftUI

struct CuartaVista: View {
    
    @State private var reset = ""
    @ObservedObject var counter = CountObserver()
    
    var body: some View {
        VStack {
            Spacer()
            Text(reset).font(.title)
            Button("Reinciar") {
                reset = "Reinicado"
            }
            Spacer()
            Text("Vista 1 Counter: \(counter.count)")
            Button("Incrementar") {
                counter.count += 1
                
                UserDefaults.standard.set(counter, forKey: "contador")
                let count = UserDefaults.standard.object(forKey: "contador") as? Int
                UserDefaults.standard.removeObject(forKey: "contador")
            }
            Spacer()
            Vista2()
            Spacer()
            Vista3()
            Spacer()
            Vista4()
            Spacer()
            Vista5()
            Spacer()
            
        }
    }
}

struct Vista2: View {
    
    @ObservedObject var counter = CountObserver()
    
    var body: some View {
        VStack {
            Text("Vista 2 Counter: \(counter.count)")
            Button("Incrementar") {
                counter.count += 1
            }
        }
    }
}

struct Vista3: View {
    
    @StateObject var counter = CountObserver()
    
    var body: some View {
        VStack {
            Text("Vista 3 Counter: \(counter.count)")
            Button("Incrementar") {
                counter.count += 1
            }
        }
    }
}

struct Vista4: View {
    
    @EnvironmentObject var counter: CountObserver
    
    var body: some View {
        VStack {
            Text("Vista 4 Counter: \(counter.count)")
            Button("Incrementar") {
                counter.count += 1
            }
        }
    }
}

struct Vista5: View {
    
    @EnvironmentObject var counter: CountObserver
    
    var body: some View {
        VStack {
            Text("Vista 5 Counter: \(counter.count)")
            Button("Incrementar") {
                counter.count += 1
            }
        }
    }
}


