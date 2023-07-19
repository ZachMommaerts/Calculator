//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Zach Mommaerts on 7/19/23.
//

import SwiftUI

struct CalculatorButton: View {
    var label: String
    var color: Color
    
    var body: some View {
        Button {
            //Inform model of button press
        } label: {
            ZStack {
                Circle()
                    .fill(color)
                
                Text(label)
                    .font(.title)
            }
        }
        .accentColor(.white)
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(label: "1", color: .gray)
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
