//
//  PlayingCardDeck.swift
//  PlayingCards
//
//  Created by Sneh Patel on 3/27/20.
//  Copyright © 2020 Sneh Patel. All rights reserved.
//

import Foundation


struct PlayingCardDeck {
    
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    
    mutating func draw() -> PlayingCard? {
        if cards.count > 0 {
            return cards.remove(at: cards.count.randomNumber)
        } else {
            return nil
        }
    }
}

extension Int{
    var randomNumber: Int{
        if self > 0{
            return Int(arc4random_uniform(UInt32(self)))
        } else if self < 0{
            return -Int(arc4random_uniform(UInt32(abs(self))))
        } else{
            return 0
        }
    }
}
