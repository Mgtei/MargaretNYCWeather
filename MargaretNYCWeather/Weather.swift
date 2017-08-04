//
//  Weather.swift
//  MargaretNYCWeather
//
//  Created by C4Q on 8/4/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation
import SwiftyJSON
class Weather {
    let minTempF: Int
    let maxTempF: Int
    let dateTimeISO: String
    
    init(minTempF: Int, maxTempF: Int, dateTimeISO: String) {
        self.minTempF = minTempF
        self.maxTempF = maxTempF
        self.dateTimeISO = dateTimeISO
    }
    static func getWeather(data: Data) -> [Weather]? {
        var weatherArray = [Weather]()
        let json = JSON(Data.self)
        guard let subJson = json["response"][0]["periods"].arrayValue.map({$0["minTempF"].numberValue.int}) else{return nil {
            for ("minTempF",subJson):(Int, JSON) in json {
                weatherArray.append(
            }
            else {
                return nil
            }
        }
        
        
            
//        //Getting a double from a JSON Array
//        let name = json[0].double
//        //Getting an array of string from a JSON Array
//        let arrayNames =  json["users"].arrayValue.map({$0["name"].stringValue})
//        //Getting a string from a JSON Dictionary
//        let name = json["name"].stringValue
            //try? JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]],
        
//        guard let jsonDict = jsonData as? [String: Any] else {
//            print("no response")
//            return nil
//        }
//        guard let response = jsonDict as? [String: Any] else {
//            print ("this is not a dictionary")
//            return nil
//        }
//        guard let responseDict = response as? [String: Any] else {
//            print ("not in responseDict")
//            return nil
//        }
//        guard let responseArray = responseDict as? [[String: Any]] else {
//            print ("not in respnoseArray")
//            return nil
//        }
        
        
//        for everyWeather in response {
//            guard let dictWeNeed = everyWeather as? [String : Any] else {
//                return nil
//            }
//            if let newWeather = Weather(withDictionary: dictWeNeed) {
//                weatherArray.append(newWeather)
//            }
//        }
        return weatherArray
    }

    
}
