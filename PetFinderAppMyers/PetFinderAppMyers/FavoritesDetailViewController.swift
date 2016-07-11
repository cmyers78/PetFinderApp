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
    
    @IBOutlet weak var detailGenderLabel: UILabel!
    
    @IBOutlet weak var detailSizeLabel: UILabel!
    
    @IBOutlet weak var detailAgeLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    
    var receivedFavorite : Dog?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Details"

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.detailNameLabel.text = self.receivedFavorite?.name
        self.detailImage.image = self.receivedFavorite?.image
        self.detailGenderLabel.text = self.receivedFavorite?.gender
        self.detailSizeLabel.text = self.receivedFavorite?.size
        self.detailAgeLabel.text = self.receivedFavorite?.age
        self.descriptionLabel.text = self.receivedFavorite?.background
    }
    



}
