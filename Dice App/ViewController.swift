//
//  ViewController.swift
//  Dice App
//
//  Created by Vamsi Chowdary on 12/02/18.
//  Copyright © 2018 Vamsi Chowdary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    // arc4random_uniform(N-1) where N is no of elements
        
        changeDiceFace()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - This is pragma mark
    //TODO: which seperates the flow by chapters
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDiceFace()
    }
    func changeDiceFace() {
        let randomNumber1 = Int(arc4random_uniform(6))
        let randomNumber2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomNumber1])
        diceImageView2.image = UIImage(named: diceArray[randomNumber2])
    }
    
    //TODO: Add Shake Gesture Handling
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        changeDiceFace()
    }
}

