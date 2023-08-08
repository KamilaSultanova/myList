//
//  Hogwarts.swift
//  HogwartsList
//
//  Created by Kamila Sultanova on 08.08.2023.
//

import Foundation
import SwiftyJSON

struct Hogwarts {
    var name = ""
    var house = ""
    var patronus = ""
    var image = ""
    var houseImage = ""
    
    init(json: JSON){
        if let item = json["name"].string{
            name = item
        }
        if let item = json["house"].string{
            house = item
        }
        if let item = json["patronus"].string{
            patronus = item
        }
        if let item = json["image"].string{
            image = item
        }
        if let item = json["houseImage"].string{
            houseImage = item
        }
    }
    
}

