//
//  Character.swift
//  OOP-App
//
//  Created by Jerry Nkumu on 05/04/16.
//  Copyright © 2016 Jerry Nkumu. All rights reserved.
//

import Foundation

class Character {
    
    private var _name: String
    private var _hp: Int
    private var _attackPwr: Int
    
    var name: String {
        get {
            return _name
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }
    
    var isAlive: Bool {
        get {
            if hp == 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(charName: String, startingHP: Int, attackPower: Int) {
        self._name = charName
        self._hp = startingHP
        self._attackPwr = attackPower
    }
    
    func attackAttempt(attackPwer: Int) -> Bool {
        self._hp -= attackPwr
        
        return true
    }
    
}