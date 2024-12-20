//
//  CountObserver.swift
//  NuevaAppTest
//
//  Created by David Merchan on 20/12/24.
//

import Combine

class CountObserver: ObservableObject {
    @Published var count: Int = 0
}
