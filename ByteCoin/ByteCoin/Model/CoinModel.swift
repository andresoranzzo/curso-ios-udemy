//
//  CoinModel.swift
//  ByteCoin
//
//  Created by evo on 12/08/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct CoinModel {
    let coin: String
    let rate: Double

    var rateString: String {
        return String(format: "%.2f", rate)
    }
}
