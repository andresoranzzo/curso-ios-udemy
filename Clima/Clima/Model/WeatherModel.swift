//
//  WeatherModel.swift
//  Clima
//
//  Created by evo on 21/05/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double

    var temperatureString: String {
        return String(format: "%.2f", temperature)
    }

    var conditionName: String {
        switch conditionId {
            case 200...232:
                return "cloud.bolt"
            case 300...321:
                return "cloud.drizzle"
            case 500...531:
                return "cloud.rain"
            case 600...622:
                return "cloud.snow"
            case 701:
                return "sun.haze"
            case 711:
                return "smoke"
            case 741:
                return "fog"
            case 771:
                return "cloud.bolt"
            case 781:
                return "tornado"
            case 800:
                return "sun.max"
            case 801...804:
                return "cloud"
            default:
                return "cloud.fog"
        }
    }
}
