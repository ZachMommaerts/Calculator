//
//  ContentView.swift
//  Calculator
//
//  Created by Zach Mommaerts on 7/19/23.
//

import SwiftUI

//Custom colors
let darkerGray = Color(CGColor(gray: 0.1, alpha: 1))
let darkGray = Color(CGColor(gray: 0.3, alpha: 1))

struct CalculatorHome: View {
    @EnvironmentObject var calculator: Calculator
    
    var body: some View {
        GeometryReader { proxy in
            VStack(alignment: .trailing){
                Spacer()
                
                //Display the current value
                Text(calculator.displayValue)
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .lineLimit(1)
                    .padding(.horizontal, 20)
                
                //Display the rows of buttons, each with specified labels
                VStack(spacing: 10) {
                    CalculatorRow(labels: ["CE", "", "", String("\u{00f7}")], colors: [darkGray, darkGray, darkGray, .orange])
                    
                    CalculatorRow(labels: ["7", "8", "9", String("\u{00d7}")])
                    
                    CalculatorRow(labels: ["4", "5", "6", "-"])
                    
                    CalculatorRow(labels: ["1", "2", "3", "+"])
                    
                    CalculatorRow(labels: ["0", ".", "", "="])
                }
                .frame(height: proxy.size.height * 0.7)
                .padding()
            }
        }
        .background(darkerGray)
        .ignoresSafeArea()
    }
}

struct CalculatorHome_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorHome()
            .environmentObject(Calculator())
    }
}
