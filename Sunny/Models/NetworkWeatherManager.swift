//
//  NetworkWeatherManager.swift
//  Sunny
//
//  Created by Dmitrii Abanin on 7/17/20.
//  Copyright © 2020 Ivan Akulov. All rights reserved.
//

import Foundation

struct NetworkWeatherManager {
    
    func fetchCurrentWeather(forCity city: String) {
        
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=845760931e6add4ff7dbb28c975aa20c"
        let url = URL(string: urlString)
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url!) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(dataString!)
            }
        }
        task.resume()
    }
}
