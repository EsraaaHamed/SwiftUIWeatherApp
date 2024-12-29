//
//  WeatherBtn.swift
//  SwiftUI-Weather
//
//  Created by Israa hamed on 23/11/2024.
//

import Foundation
import SwiftUI
struct WeatherBtn: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}