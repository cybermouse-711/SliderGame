//
//  ContentView.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var manager = ValueManager()
    private let storageManager = StorageManager.shared
    
    @State private var currentValue = 0.0 //поправить значение
    @State private var showAlert = false
    
    var body: some View {
        VStack {
            Text("Подвиньте слайдер как можно ближе к: \(manager.value.targetValue)")

            SliderView(currentValue: $currentValue, minimumValueText: 0, maximumValueText: 100, alpha: 1)
                .padding()
            
            ButtonView(title: "Проверить ответ", action: showAlert.toggle())
                .padding(.bottom)
                .alert("Значение слайдера: \(storageManager.computeScore())", isPresented: $showAlert, actions: {})

            ButtonView(title: "Начать заново", action: storageManager.changeValue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
