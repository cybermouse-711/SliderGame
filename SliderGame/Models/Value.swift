//
//  Value.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 21.09.2023.
//

import Combine

final class ValueManager: ObservableObject {
    
    @Published var value = Value()
    
    init() {}
    
    init(value: Value) {
        self.value = value
    }
}

struct Value {
    var targetValue = Int.random(in: 0...100)
}
