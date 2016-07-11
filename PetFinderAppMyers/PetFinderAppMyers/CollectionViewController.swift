//
//  CollectionViewController.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/7/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    var currentDog = [Dog]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Search"

        
        for dog in 0...19 {
            
            if let d = DataStorage.sharedInstance.dogAtIndex(dog) {
                self.currentDog.append(d)
                
                print(self.currentDog.count)
            }
        }
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.currentDog.count
    }

    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionCell", forIndexPath: indexPath) as! DogCollectionViewCell
        
        let aDog = self.currentDog[indexPath.row]
        
        cell.dogNameLabel.text = aDog.name
        cell.dogImage.image = UIImage(named: aDog.imageName)
        
        return cell
    }


}
