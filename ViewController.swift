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
    
    
    @IBOutlet weak var playingCardView: PlayingCardView!{
        didSet{
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextCard))
            swipe.direction = [ .left, .right]
            playingCardView.addGestureRecognizer(swipe)
            
            let pinch = UIPinchGestureRecognizer(target: playingCardView, action:
                #selector(PlayingCardView.adjustFaceCardScale(byHandlingGestureRecognizedBy:)))
            playingCardView.addGestureRecognizer(pinch)
        }
    }
    
    
    @IBAction func flipCard(_ sender: UITapGestureRecognizer) {
        switch sender.state {
        case .ended:
                playingCardView.isFacedUp = !playingCardView.isFacedUp
        default: break
        }
        
    }
    
    
    @objc func nextCard() {
        if let card = deck.draw(){
            playingCardView.rank = card.rank.order
            playingCardView.suit = card.suit.rawValue  
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}




