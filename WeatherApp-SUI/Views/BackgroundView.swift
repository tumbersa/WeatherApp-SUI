//
//  BackgroundView.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 30.03.2024.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea(edges: .all)
//        ContainerRelativeShape()
//            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
//            .ignoresSafeArea()
    }
}



struct ViewForPreviewBackgroundView : View {
     @State private var value = true

     var body: some View {
         BackgroundView(isNight: $value)
     }
}


#Preview {
    ViewForPreviewBackgroundView()
}
