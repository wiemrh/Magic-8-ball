//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by +	wiem rebah  on 09/07/2019.
//  Copyright © 2019 +	wiem rebah . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray =  ["ball1" , "ball2" , "ball3" , "ball4" , "ball5" ]
    var randomBallNumber : Int = 0
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      newBallImage()
        
    }
    func  newBallImage()  {
        
        randomBallNumber = Int.random(in: 0 ... 4)
        print(randomBallNumber)
        imageView.image = UIImage(named: ballArray[randomBallNumber] )
        
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
         newBallImage()
    }
    
    
}

