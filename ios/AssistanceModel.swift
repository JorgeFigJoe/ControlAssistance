//
//  AssistanceModel.swift
//  ControlAssistance
//
//  Created by Jorge  Figueroa on 13/03/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import Foundation

struct AssistanceModel : Decodable {
    let name : String
    let  id : Int
    let sprites : sprites
    
    init(name : String, id : Int, sprites : sprites) {
        self.name = name
        self.id = id
        self.sprites = sprites
    }
}

struct sprites : Decodable {
    let front_default : URL
    
    init(frontDefault : URL) {
        self.front_default = frontDefault
    }
}
