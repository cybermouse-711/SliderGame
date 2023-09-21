//
//  ButtonView.swift
//  SliderGame
//
//  Created by Елизавета Медведева on 19.09.2023.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.blue)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Button", action: {})
    }
}
