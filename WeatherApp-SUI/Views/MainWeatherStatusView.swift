//
//  MainWeatherStatusView.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 30.03.2024.
//

import SwiftUI

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature) °C")
                .font(.system(size: 70, weight: .medium, design: .serif))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 6)
}
