//
//  ContentView.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 29.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, Color("lightBlue")]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea(edges: .all)
            VStack {
                Text("Voronezh")
                    .font(.system(size: 32, weight: .medium, design: .serif))
                    .foregroundStyle(.white)
                    .padding()
                
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("6 °C")
                        .font(.system(size: 70, weight: .medium, design: .serif))
                        .foregroundStyle(.white)
                }
                .padding(.bottom, 40)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 4)
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 10)
                    
                    WeatherDayView(dayOfWeek: "THU", imageName: "sun.rain.fill", temperature: 7)
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName: "moon.zzz.fill", temperature: 11)
                    
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.bolt.rain.fill", temperature: 2)
                }
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

