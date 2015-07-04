//
//  Players.swift
//  NBAPlayers
//
//  Created by Chris Snyder on 6/25/15.
//  Copyright (c) 2015 LAKES. All rights reserved.
//

import Foundation
import UIKit

var newPlayer : PlayerDetail = PlayerDetail()

struct Player {
    var playerName = ""
    var playerCollege = ""
    var playerImage: UIImage!
}

class PlayerDetail {
    var players = [Player]()

    func addPlayer(playerName: String, playerCollege: String, playerImage: UIImage ) {
        players.append(Player(playerName: playerName, playerCollege: playerCollege, playerImage: playerImage))
    }
}