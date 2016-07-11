//
//  FavoritesDetailViewController.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/10/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class FavoritesDetailViewController: UIViewController {

    @IBOutlet weak var detailNameLabel: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    var receivedFavorite : Dog?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.detailNameLabel.text = self.receivedFavorite?.name
        self.detailImage.image = self.receivedFavorite?.image
    }
    



}
