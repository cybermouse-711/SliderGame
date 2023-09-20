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
    
    let minimumValueText: Float = 0
    let maximumValueText: Float = 100
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к: \(targetValue)")
                .padding(.bottom)
            HStack {
                Text(String(format: "%.0f", minimumValueText))
                
                SliderUIK(
                    currentValue: $currentValue,
                    maximumValue: minimumValueText,
                    minimumValue: minimumValueText
                )
                
                Text(String(format: "%.0f", maximumValueText))
            }
            .padding(.bottom)
            
            ButtonView(title: "Проверить ответ", action: {})
                .padding(.bottom)

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
