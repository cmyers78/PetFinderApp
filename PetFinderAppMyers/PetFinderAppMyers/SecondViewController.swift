//
//  SecondViewController.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/6/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dogArray = [Dog]()
    var currentDog : Dog?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.seedArray()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func seedArray() {
        
        let dog1 = Dog(petName: "Athena", petAge: "5 years", petImage: "p1 - Athena", petBreed: "Chihuahua", petSize: "Small", petGender: "Female")
        self.dogArray.append(dog1)
        
        let dog2 = Dog(petName: "Audi", petAge: "8 months", petImage: "p2 - Audi", petBreed: "Lab mix", petSize: "Medium", petGender: "Female")
        self.dogArray.append(dog2)
        
        let dog3 = Dog(petName: "Basil", petAge: "6.5 years", petImage: "p3 - Basil", petBreed: "Basset Hound mix", petSize: "Large", petGender: "Male")
        self.dogArray.append(dog3)
        
        let dog4 = Dog(petName: "Beaufort", petAge: "6 years", petImage: "p4 - Beaufort", petBreed: "Hound", petSize: "Large", petGender: "Male")
        self.dogArray.append(dog4)
        
        let dog5 = Dog(petName: "Biroldo", petAge: "4 years", petImage: "p5 - Biroldo", petBreed: "Dachshund", petSize: "Small", petGender: "Male")
        self.dogArray.append(dog5)
        
        let dog6 = Dog(petName: "Calvin", petAge: "8 years", petImage: "p6 - Calvin", petBreed: "Jack Russell", petSize: "Medium", petGender: "Male")
        self.dogArray.append(dog6)
        
        let dog7 = Dog(petName: "Caspian", petAge: "2 years", petImage: "p7 - Caspian", petBreed: "Pit/Shepherd mix", petSize: "Large", petGender: "Male")
        self.dogArray.append(dog7)
        
        let dog8 = Dog(petName: "Cher", petAge: "5 years", petImage: "p8 - Cher", petBreed: "Chihuahua", petSize: "Small", petGender: "Female")
        self.dogArray.append(dog8)
        
        let dog9 = Dog(petName: "Cora", petAge: "5 years", petImage: "p9 - Cora", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Female")
        self.dogArray.append(dog9)
        
        let dog10 = Dog(petName: "Cotechino", petAge: "10 years", petImage: "p10 - Cotechino", petBreed: "Miniature Pinscher", petSize: "Small", petGender: "Male")
        self.dogArray.append(dog10)
        
        
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dogArray.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        self.currentDog = self.dogArray[indexPath.row]
        
        cell.textLabel?.text = self.currentDog?.name
        
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        
    }

}

