//
//  SliderView.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 21.09.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var currentValue: Double
    
    let minimumValueText: Float
    let maximumValueText: Float
    let alpha: Int
    
    var body: some View {
        HStack {
            Text(String(format: "%.0f", minimumValueText))
            
            SliderUIK(
                currentValue: $currentValue,
                maximumValue: minimumValueText,
                minimumValue: minimumValueText,
                alpha: alpha
            )
            
            Text(String(format: "%.0f", maximumValueText))
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(currentValue: .constant(50), minimumValueText: 0, maximumValueText: 100, alpha: 50)
    }
}
