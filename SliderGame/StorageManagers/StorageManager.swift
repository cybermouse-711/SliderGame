//
//  StorageManager.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 21.09.2023.
//

import SwiftUI

final class StorageManager: ObservableObject {
    
    static let shared = StorageManager()
    
    @Published var value = Value()
    var currentValue: Double = 50
    
    private init() {}
    
    func computeScore() -> Int {
        let difference = abs(value.targetValue - lround(currentValue))
        return 100 - difference
    }
    
    func changeValue() {
        value.targetValue = Int.random(in: 0...100)
    }
}
