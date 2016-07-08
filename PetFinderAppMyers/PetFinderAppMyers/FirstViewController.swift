//
//  FirstViewController.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/6/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CardStackDelegate {
    
    var counter = 0
    
    
    @IBOutlet weak var cardStackView: CardStack!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // IMPORTANT - SET THE DELEGATE!!
        
        self.cardStackView.delegate = self
        
        
    }

    func cardInterested(dog: Dog) {
        DataStorage.sharedInstance.addFavoriteDog(dog)
        // call verifyCardCount
        
        
    }
    
    func cardNotInterested(dog: Dog) {
        print("not interested")
        // call verifyCardCount
    }
    
    func verifyCardCount() {
        self.counter = counter + 1
        // check the count of cards
        // if cards == 20, 
        // then call the cardStackView.setupCards
        // then reset counter to 0
        // clear favorites array
        
    }


}

