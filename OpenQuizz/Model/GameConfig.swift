//
//  GameConfig.swift
//  Labo 1
//
//  Created by MAC on 2022-05-01.
//  Copyright © 2022 Ahuntsic. All rights reserved.
//

import Foundation

class GameConfig {
    static let sharedInstance = GameConfig()
    private init() {}
    var name: String? = "Default Player"
}
