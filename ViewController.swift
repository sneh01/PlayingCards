//
//  ViewController.swift
//  PlayingCards
//
//  Created by Sneh Patel on 3/27/20.
//  Copyright © 2020 Sneh Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var  deck = PlayingCardDeck()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for _ in 1...10{
            if let card = deck.draw() {
                print("\(card)")
            }
            
        }
        
    }


}

