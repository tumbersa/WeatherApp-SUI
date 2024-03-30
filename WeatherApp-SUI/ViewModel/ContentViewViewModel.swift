//
//  ContentViewViewModel.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 30.03.2024.
//

import Foundation

final class ContentViewViewModel {
    let networkClient = NetworkClient.shared
    
    init() {
        fetchWeather()
    }
    
    func fetchWeather(){
        networkClient.fetchCurrentWeather { result in
            switch result {
            case .success(let body):
                print(body)
            case .failure(let error):
                print(error)
            }
        }
        
        networkClient.fetchForecast { result in
            switch result {
            case .success(let body):
                print(body)
            case .failure(let error):
                print(error)
            }
        }
    }
}
