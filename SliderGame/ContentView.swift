//
//  ContentView.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State var targetValue = 0 //целевое
    @State var currentValue = 5.0 //от слайдера
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к: \(targetValue)")

            SliderView(currentValue: $currentValue, minimumValueText: 0, maximumValueText: 100)
                .padding()
            
            ButtonView(title: "Проверить ответ", action: {})
                .padding(.bottom)

            ButtonView(title: "Начать заново", action: {})
        }
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
