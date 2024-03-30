//
//  NetworkClient.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 30.03.2024.
//

import Foundation

final class NetworkClient {
    static let shared = NetworkClient()
    
    private init(){}
    
    func fetchCurrentWeather(completion: @escaping (Result<CurrentWeather,Error>) -> Void) {
        
        let request = URLRequest.makeHTTPRequest(endPoint: Constants.curWeatherEndPoint)
        
        let task = URLSession.shared.objectTask(for: request) { (result: Result<CurrentWeatherDTO,Error>) in
            switch result {
            case .success(let body):
                let curWeather = CurrentWeather(iconStr: body.weather.first?.main ?? "", temperature: Int(body.main.feelsLike))
                completion(.success(curWeather))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
    
    func fetchForecast(completion: @escaping (Result<WeatherForecastDTO,Error>) -> Void) {
        
        let request = URLRequest.makeHTTPRequest(endPoint: Constants.forecastWeatherEndPoint)
        
        let task = URLSession.shared.objectTask(for: request) { (result: Result<WeatherForecastDTO,Error>) in
            switch result {
            case .success(let body):
                completion(.success(body))
            case .failure(let error):
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
