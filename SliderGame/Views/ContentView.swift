//
//  ContentView.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var manager = ValueManager()
    
    @State private var currentValue = 50.0
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к: \(manager.value.targetValue)")
            
            SliderView(
                currentValue: $currentValue,
                minimumValueText: 0,
                maximumValueText: 100,
                alpha: computeScore())
            .padding()
            
            ButtonView(title: "Проверить ответ", action: alert)
                .padding(.bottom)
                .alert("Значение слайдера: \(computeScore())", isPresented: $showAlert, actions: {})

            ButtonView(title: "Начать заново", action: change)
        }
    }
    
    private func computeScore() -> Int {
        let difference = abs(manager.value.targetValue - lround(currentValue))
        return 100 - difference
    }
    
    private func change() {
        manager.value.targetValue = Int.random(in: 0...100)
    }
    
    private func alert() {
        showAlert.toggle()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
