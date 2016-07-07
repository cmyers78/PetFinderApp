//
//  FirstViewController.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/6/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CardStackDelegate {

    
    @IBOutlet weak var cardStackView: CardStack!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // IMPORTANT - SET THE DELEGATE!!
        
        self.cardStackView.delegate = self
        
        
    }

    func cardInterested(dog: Dog) {
        print("interested")
    }
    
    func cardNotInterested(dog: Dog) {
        print("not interested")
    }


}

