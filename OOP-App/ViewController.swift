//
//  ViewController.swift
//  OOP-App
//
//  Created by Jerry Nkumu on 05/04/16.
//  Copyright © 2016 Jerry Nkumu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var player1HpLbl: UILabel!
    @IBOutlet weak var player2HpLbl: UILabel!
      
    @IBOutlet weak var player1Img: UIImageView!
    @IBOutlet weak var player2Img: UIImageView!
    
    var playr1: Player1!
    var playr2: Player2!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        playr1 = Player1(charName: "Bolg", startingHP: 110, attackPower: 10)
        playr2 = Player2(charName: "Nidas", startingHP: 125, attackPower: 5)

        
        player1HpLbl.text = "\(playr1.hp) HP"
        player2HpLbl.text = "\(playr2.hp) HP"
        printLbl.text = "Ready... FIGHT!"
        
        player1Img.hidden = false
        player2Img.hidden = false
    }
    
    @IBAction func onAttack1Pressed(sender: AnyObject) {
        
        playr2.attackAttempt(playr1.attackPwr)
        printLbl.text = "\(playr1.name) attacked \(playr2.name) for \(playr1.attackPwr) HP!"
        player2HpLbl.text = "\(playr2.hp)"
        
    }
    
    @IBAction func onAttack2Pressed(sender: AnyObject) {
        
        playr1.attackAttempt(playr2.attackPwr)
        printLbl.text = "\(playr2.name) attacked \(playr1.name) for \(playr2.attackPwr) HP!"
        player1HpLbl.text = "\(playr1.hp)"
    }
}

