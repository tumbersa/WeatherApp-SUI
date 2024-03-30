//
//  ContentView.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 29.03.2024.
//

import SwiftUI

struct ContentView: View {
    
    let net = ContentViewViewModel()
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack {
                CityTextView(cityName: "Voronezh")
                
                MainWeatherStatusView(imageName: isNight ? "sparkles" : "cloud.sun.fill", temperature: 6)
                
                HStack(spacing: 20) {
                    //1
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 4)
                    //2
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 10)
                    //3
                    WeatherDayView(dayOfWeek: "THU", imageName: "sun.rain.fill", temperature: 7)
                    //4
                    WeatherDayView(dayOfWeek: "FRI", imageName: "moon.zzz.fill", temperature: 11)
                    //5
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.bolt.rain.fill", temperature: 2)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .white,
                                  backgroundColor: isNight ? .gray : .yellow)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
