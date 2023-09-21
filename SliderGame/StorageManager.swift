//
//  StorageManager.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 21.09.2023.
//

import SwiftUI

final class StorageManager: ObservableObject {
    
    static let shared = StorageManager()
    
    var targetValue = Int.random(in: 0...100)
    @Published var currentValue: Double = 50
    
    private init() {}
    
    func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
    
    func changeValue() -> Int {
        targetValue = Int.random(in: 0...100)
        return targetValue
    }
}
