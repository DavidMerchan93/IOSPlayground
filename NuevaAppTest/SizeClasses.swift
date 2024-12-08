//
//  ContentView.swift
//  NuevaAppTest
//
//  Created by David Merchan on 2/12/24.
//

import SwiftUI

struct SizeClasses: View {
    
    let message = "Mi mensaje"
    @State private var showAlert: Bool = false
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        
        if sizeClass == .compact {
            VStack {
                
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                Text(message)
                    .font(.headline)
                    .padding()
                
                Button("Show Alert") {
                    showAlert.toggle()
                }.modifier(botonStyle(textColor: Color.white, backgroundColor: Color.blue))
                Button("Hide Alert") {
                    showAlert.toggle()
                }.modifier(botonStyle(textColor: Color.white, backgroundColor: Color.red))
            }
        } else {
            HStack {
                Text(message)
                    .font(.headline)
                    .padding()
                
                Button("Show Alert") {
                    showAlert.toggle()
                }
            }
        }
        
    }
}

struct botonStyle : ViewModifier {
    var textColor: Color
    var backgroundColor: Color
    
    func body(content: Content) -> some View {
        
        content
            .padding()
            .background(backgroundColor)
            .foregroundColor(textColor)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
}

#Preview {
    SizeClasses()
}
