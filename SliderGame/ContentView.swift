//
//  ContentView.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let storageManager = StorageManager.shared
    
    @State private var targetValue = storageManager.targetValue
    @State private var currentValue = storageManager.$currentValue
    
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к: \(targetValue)")

            SliderView(currentValue: $currentValue, minimumValueText: 0, maximumValueText: 100)
                .padding()
            
            ButtonView(title: "Проверить ответ", action: {showAlert})
                .padding(.bottom)

            ButtonView(title: "Начать заново", action: {})
        }
    }
    
    private func showAlert() -> Void {
        .alert("Значение слайдера: \(currentValue)", isPresented: $showAlert, actions: {})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
