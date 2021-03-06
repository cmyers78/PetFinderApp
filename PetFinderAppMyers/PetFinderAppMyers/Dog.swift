//
//  Dog.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/6/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class Dog: NSObject {
    
    var name : String = ""
    var age : String = ""
    var imageName : String = ""
    var breed : String = ""
    var size : String = ""
    var gender : String = ""
    var background : String = ""
    
    // optional UI Image - Lazy Property - computed properties
    var image : UIImage? {
        return UIImage(named: self.imageName)
    }

    
    init(petName : String, petAge : String, petImage : String, petBreed : String, petSize : String, petGender : String, petBackground : String) {
        
        self.name = petName
        self.age = petAge
        self.imageName = petImage
        self.breed = petBreed
        self.size = petSize
        self.gender = petGender
        self.background = petBackground
    }
    
    

}
