//
//  DataStorage.swift
//  PetFinderAppMyers
//
//  Created by Christopher Myers on 7/7/16.
//  Copyright © 2016 Dragoman Developers, LLC. All rights reserved.
//

import UIKit

class DataStorage: NSObject {
    
    static let sharedInstance = DataStorage()
    private override init() {
        
    }
    
    private var dogArray = [Dog]()
    
    func seedDog() {
        
        
    }
    
    func addDog(dog : Dog) {
        self.dogArray.append(dog)
        
    }
    
    func removeDog() {
        self.dogArray.removeAll()
    }
    
    func dogAtIndex(index : Int) -> Dog? {
        if self.dogArray.count >= 0 && index < self.dogArray.count {
            return self.dogArray[index]
        }
        return nil
    }
    
    func numberOfDogs() -> Int {
        return self.dogArray.count
    }

}
