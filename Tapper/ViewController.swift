//
//  ViewController.swift
//  Tapper
//
//  Created by Michael Sandoval on 7/19/16.
//  Copyright © 2016 Michael Sandoval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //variables 
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var howManyTaps: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var coinButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    //Actions
    @IBAction func onCoinButtonTapped (sender: UIButton) {
        currentTaps += 1
        updateTapsLabel()
        
        if isGameOver() {
            
            restartGame()
        }
    }
    @IBAction func onPlayButtonTapped(sender: UIButton) {

        if howManyTaps.text != nil && howManyTaps.text != ""  {
            
            logoImage.hidden = true
            playButton.hidden = true
            howManyTaps.hidden = true
            tapsLabel.hidden = false
            coinButton.hidden = false

            maxTaps = Int(howManyTaps.text!)!
            currentTaps = 0
            
            updateTapsLabel()
            
        }
        
    }
    
    func restartGame() {
        
        howManyTaps.text = ""
        maxTaps = 0
        
        logoImage.hidden = false
        playButton.hidden = false
        howManyTaps.hidden = false
        tapsLabel.hidden = true
        coinButton.hidden = true
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
            else {
                return false
            }

    }
    
    func updateTapsLabel() {
          tapsLabel.text = "\(currentTaps) Taps"
        
    }
    
}

