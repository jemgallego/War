//
//  ViewController.swift
//  War
//
//  Created by Jem on 3/27/15.
//  Copyright (c) 2015 jemgallego. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    
    var cards:[String] = ["card1", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13"]
    
    var playerScoreTotal = 0;
    var enemyScoreTotal = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playButtonTapped(sender: UIButton) {
        
        var firstCardNumber = generateCardNumber()
        var secondCardNumber = generateCardNumber()
        
        self.firstCardImageView.image = UIImage(named: cards[firstCardNumber])
        self.secondCardImageView.image = UIImage(named: cards[secondCardNumber])
        
        if (firstCardNumber > secondCardNumber) {
            playerScoreTotal += 1;
            self.playerScore.text = String(playerScoreTotal)
        }
        else if (firstCardNumber == secondCardNumber) {
            // TIE
        }
        else {
            enemyScoreTotal += 1;
            self.enemyScore.text = String(enemyScoreTotal)
        }
    }
    
    func generateCardNumber() -> Int {
        return Int(arc4random_uniform(13))
    }
    
}

