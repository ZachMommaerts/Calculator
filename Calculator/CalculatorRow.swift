//
//  CalculatorRow.swift
//  Calculator
//
//  Created by Zach Mommaerts on 7/19/23.
//

import SwiftUI

let columnCount = 4

struct CalculatorRow: View {
    var labels = ["", "", "", ""]
    var colors: [Color] = [.gray, .gray, .gray, .orange]
    var body: some View {
        // Display a calculator button for each column
        HStack(spacing: 10) {
            // Select from the labels and colors
            ForEach(0..<columnCount, id: \.self) { index in
                CalculatorButton(label: labels[index], color: colors[index])
            }
        }
    }
}

struct CalculatorRow_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorRow(labels: ["1", "2", "3", "+"])
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
