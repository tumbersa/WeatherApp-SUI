//
//  CityTextView.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 30.03.2024.
//

import SwiftUI

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .serif))
            .foregroundStyle(.white)
            .padding()
    }
}

#Preview {
    CityTextView(cityName: "Voronezh")
}
