//
//  Player2.swift
//  OOP-App
//
//  Created by Jerry Nkumu on 05/04/16.
//  Copyright © 2016 Jerry Nkumu. All rights reserved.
//

import Foundation

class Player2: Character {
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(charName: name, startingHP: hp, attackPower: attackPower)
    }
}