//
//  ViewController.swift
//  Concentration
//
//  Created by Djalma Junior on 21/09/19.
//  Copyright © 2019 Djalma Junior. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var flipCount: Int = 0
    {
        didSet
        {
            flipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojiChoices = ["👺", "👹", "👺", "👹"]
    
    @IBOutlet weak var flipCountLabel: UILabel!

    @IBOutlet var buttonsCards: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton)
    {
        if let idx = buttonsCards.firstIndex(of: sender)
        {
            flipCard(withEmoji: emojiChoices[idx], on: sender)

        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton)
    {
        flipCount += 1
        if button.currentTitle == emoji
        {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.5787844234, blue: 0, alpha: 1)
        }
        else
        {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

