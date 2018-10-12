//
//  ViewController.swift
//  Magic 8 ball
//
//  Created by Ernst Pierre on 2018/10/12.
//  Copyright © 2018 Ernst Pierre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBallImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }

    @IBAction func onAskButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage();
    }
    
    func newBallImage(){
        let randomBallIndex = Int.random(in: 0 ... 4)
        let ballArray = ["ball1" , "ball2" , "ball3" , "ball4" , "ball5"]
        
        // change the question (image)
        magicBallImageView.image = UIImage(named: ballArray[randomBallIndex])
    }
    
}

