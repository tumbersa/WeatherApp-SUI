//
//  WeatherButton.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 29.03.2024.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundStyle(textColor)
            .font(.system(size: 20, weight: .bold, design: .serif))
            .cornerRadius(10)
    }
}


#Preview {
    WeatherButton(title: "Change", textColor: .blue, backgroundColor: .white)
}
