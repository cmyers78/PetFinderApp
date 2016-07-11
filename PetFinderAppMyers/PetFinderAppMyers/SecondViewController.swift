//
//  SecondViewController.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/6/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var currentDog : Dog?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Favorites"
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataStorage.sharedInstance.favoriteNumberOfDogs()
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DogDetailsTableViewCell
        
        self.currentDog  = DataStorage.sharedInstance.favoriteDogAtIndex(indexPath.row)
        
        cell.dogNameLabel.text = currentDog?.name
        cell.dogAgeLabel.text = currentDog?.age
        cell.dogBreedLabel.text = currentDog?.breed
        
        if let image = currentDog?.imageName {
            cell.dogImage.image = UIImage(named: image)
        }
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentDog = DataStorage.sharedInstance.favoriteDogAtIndex(indexPath.row)
        
        self.performSegueWithIdentifier("DetailSegue", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "DetailSegue" {
            
            if let controller = segue.destinationViewController as? FavoritesDetailViewController {
                
                controller.receivedFavorite = self.currentDog
            
            }
                
            else {
                print("your segue indentifier is incorrect")
            }
            
        }
    }
    
    

}

