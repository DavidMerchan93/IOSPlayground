//
//  ContentView.swift
//  NuevaAppTest
//
//  Created by David Merchan on 2/12/24.
//

import SwiftUI

struct ContentView: View {
    
    let message = "Mi mensaje"
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 40
        ) {
            
            
            HStack {
                Text("Hola")
                Text("Que mas")
                    .font(.title2)
                    .bold()
            }
            
            ZStack {
                Color.red.edgesIgnoringSafeArea(.all)
            }
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("Hello!")
                .font(.largeTitle)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.trailing)
                .padding([.leading, .bottom, .trailing], 20.0)
            
            Button(
                action: {
                    self.showAlert = true
                }
            ) {
                Text(message)
            }.alert(isPresented: $showAlert) {
                Alert(title: Text("Titulo"), dismissButton:.default(Text("OK")))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
