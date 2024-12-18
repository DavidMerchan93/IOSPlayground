//
//  Modelo.swift
//  NuevaAppTest
//
//  Created by David Merchan on 18/12/24.
//
import Foundation

struct Modelo: Identifiable {
    let id = UUID()
    let nombre: String
    let emogi: String
    let detalle: String
}

let lista: [Modelo] = [
    Modelo(nombre: "David", emogi: "😀", detalle: "El david"),
    Modelo(nombre: "Stiven", emogi: "☺️", detalle: "El stiven"),
    Modelo(nombre: "Merchan", emogi: "🥰", detalle: "El merchan"),
    Modelo(nombre: "Bustos", emogi: "🥸", detalle: "El bustos"),
    Modelo(nombre: "David", emogi: "😀", detalle: "El david"),
    Modelo(nombre: "Stiven", emogi: "☺️", detalle: "El stiven"),
    Modelo(nombre: "Merchan", emogi: "🥰", detalle: "El merchan"),
    Modelo(nombre: "Bustos", emogi: "🥸", detalle: "El bustos"),
    Modelo(nombre: "David", emogi: "😀", detalle: "El david"),
    Modelo(nombre: "Stiven", emogi: "☺️", detalle: "El stiven"),
    Modelo(nombre: "Merchan", emogi: "🥰", detalle: "El merchan"),
    Modelo(nombre: "Bustos", emogi: "🥸", detalle: "El bustos"),
    Modelo(nombre: "David", emogi: "😀", detalle: "El david"),
    Modelo(nombre: "Stiven", emogi: "☺️", detalle: "El stiven"),
    Modelo(nombre: "Merchan", emogi: "🥰", detalle: "El merchan"),
    Modelo(nombre: "Bustos", emogi: "🥸", detalle: "El bustos"),
]
