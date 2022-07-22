//
//  CurrentWeatherData.swift
//  WeatherAPI1
//
//  Created by Дербе Эмма on 12.06.2022.
//

import Foundation

struct CurrentWeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feelsLike: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_lake"
    }
}

struct Weather: Codable {
    let id: Int
}
