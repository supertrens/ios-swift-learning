//
//  ViewController.swift
//  Dicee
//
//  Created by Ernst Pierre on 2018/10/11.
//  Copyright © 2018 Ernst Pierre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // UI connections
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateDiceImages()

    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        
       updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {

        updateDiceImages()
    }
    
    func updateDiceImages(){
        // get random number on from 0 to 5 onRollButtonPress
        let randomDiceIndex1 = Int.random(in: 0 ... 5)
        let randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        // the images name in asset
         let diceNameArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
        
        // change the imageViews
        diceImageView1.image = UIImage(named: diceNameArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceNameArray[randomDiceIndex2])
    }
    
}

