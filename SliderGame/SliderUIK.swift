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
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        slider.maximumValue = maximumValue
        slider.minimumValue = minimumValue
        slider.thumbTintColor = .red
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(currentValue)
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
    }
}

struct SliderUIK_Previews: PreviewProvider {
    static var previews: some View {
        SliderUIK(currentValue: .constant(50), maximumValue: 100, minimumValue: 0)
    }
}
