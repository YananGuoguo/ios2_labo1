//
//  GameStats.swift
//  Labo 1
//
//  Created by MAC on 2022-05-01.
//  Copyright © 2022 Ahuntsic. All rights reserved.
//

import Foundation

class GameStats {
    var playerArray = [String]()
    var scoreArray = [Int]()
    var times = 0
    var maxScore = 0
    func increment() {
        self.times += 1
    }
}

var gameStats = GameStats()
