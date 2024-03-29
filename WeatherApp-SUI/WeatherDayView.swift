//
//  WeatherDay.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 29.03.2024.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .serif))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature) °C")
                .font(.system(size: 24, weight: .medium, design: .serif))
                .foregroundStyle(.white)
        }
    }
}


#Preview {
    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 6)
}
