//
//  URLRequest+Extensions.swift
//  WeatherApp-SUI
//
//  Created by Глеб Капустин on 30.03.2024.
//

import Foundation

//MARK: - HTTP Request

extension URLRequest {
    static func makeHTTPRequest(
        endPoint: String
    ) -> URLRequest {
        guard var url = URL(string: endPoint)  else {
            fatalError("Invalid url")
        }
        url.append(queryItems: [
            URLQueryItem(name: "lat", value: Constants.lat),
            URLQueryItem(name: "lon", value: Constants.lon),
            URLQueryItem(name: "apiid", value: Constants.apiid),
            URLQueryItem(name: "units", value: Constants.units)
        ])
        let request = URLRequest(url: url)
        return request
    }
}
