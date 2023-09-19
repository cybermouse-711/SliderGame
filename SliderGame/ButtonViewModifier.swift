//
//  ButtonViewModifier.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 19.09.2023.
//

import SwiftUI

struct ButtonViewModifier: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title2)
                .fontWeight(.medium)
                .foregroundColor(.blue)
        }
    }
}

struct ButtonViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        ButtonViewModifier(title: "Button", action: {})
    }
}
