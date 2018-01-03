//
//  ViewController.swift
//  war
//
//  Created by user on 1/3/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardView: UIImageView!
    
    @IBOutlet weak var rightCardView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func deal(_ sender: Any) {
        let leftRandom = arc4random_uniform(13) + 2
        let rightRandom = arc4random_uniform(13) + 2
        
        leftCardView.image = UIImage(named: "card\(leftRandom)")
        rightCardView.image = UIImage(named: "card\(rightRandom)")
        
        if (leftRandom > rightRandom) {
            leftScore += 1
            playerScore.text = String(leftScore)
        }
        else if (rightRandom > leftRandom) {
            rightScore += 1
            cpuScore.text = String(rightScore)
        }
    }
    
    
    @IBAction func reset(_ sender: Any) {
        leftScore = 0
        rightScore = 0
        playerScore.text = String(leftScore)
        cpuScore.text = String(rightScore)
        leftCardView.image = UIImage(named: "back")
        rightCardView.image = UIImage(named: "back")
    }
    
}

