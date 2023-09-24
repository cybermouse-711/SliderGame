//
//  SliderUIK.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 20.09.2023.
//

import SwiftUI

struct SliderUIK: UIViewRepresentable {
    @Binding var currentValue: Double 
    
    let maximumValue: Float
    let minimumValue: Float
    let alpha: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.maximumValue = maximumValue
        slider.minimumValue = minimumValue
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.changeCurrenValue),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(currentValue)
        uiView.thumbTintColor = UIColor(red: 1, green: 0, blue: 0, alpha: (CGFloat(alpha) / 100))
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $currentValue)
    }
}

extension SliderUIK {
    final class Coordinator: NSObject {
        @Binding var currentValue: Double
        
        init(currentValue: Binding<Double>) {
            self._currentValue = currentValue
        }
        
        @objc func changeCurrenValue(_ sender: UISlider) {
            currentValue = Double(sender.value)
        }
    }
}

struct SliderUIK_Previews: PreviewProvider {
    static var previews: some View {
        SliderUIK(currentValue: .constant(50), maximumValue: 100, minimumValue: 0, alpha: 50)
    }
}
