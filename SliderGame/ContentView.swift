//
//  ContentView.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
    let targetValue = 0 //целевое
    let currentValue = 0.0 //от слайдера
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к: \(targetValue)")
            
            ButtonView(title: "Проверить ответ", action: {})

            ButtonView(title: "Начать заново", action: {})
        }
        .padding()
    }
    
    private func computeScore() -> Int {
        let difference = abs(targetValue - lround(currentValue))
        return 100 - difference
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
