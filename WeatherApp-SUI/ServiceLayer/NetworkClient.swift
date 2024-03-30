//
//  NetworkClient.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 30.03.2024.
//

import Foundation

final class NetworkClient {
    private let urlSession = URLSession.shared
    static let shared = NetworkClient()
    
    private init(){}
    
    func fetchCurrentWeather(completion: @escaping (Result<CurrentWeatherDTO,Error>) -> Void) {
        
        let request = URLRequest.makeHTTPRequest(endPoint: Constants.curWeatherEndPoint)
        
        let task = urlSession.objectTask(for: request) { (result: Result<CurrentWeatherDTO,Error>) in
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
