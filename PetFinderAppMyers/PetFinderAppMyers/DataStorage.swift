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
    
    private var favoriteDogsArray = [Dog]()
    
    
    func seedDog() {
        
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
        
        let dog11 = Dog(petName: "Daisy", petAge: "1 year", petImage: "p11 - Daisy", petBreed: "Pit Bull Terrier", petSize: "Medium", petGender: "Female")
        self.dogArray.append(dog11)
        
        let dog12 = Dog(petName: "Flick", petAge: "3 years", petImage: "p12 - Flick", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Male")
        self.dogArray.append(dog12)
        
        let dog13 = Dog(petName: "Froggers", petAge: "7 years", petImage: "p13 - Froggers", petBreed: "Boston Terrier", petSize: "Medium", petGender: "Male")
        self.dogArray.append(dog13)
        
        let dog14 = Dog(petName: "Hendrick", petAge: "10 years", petImage: "p14 - Hendrick", petBreed: "Border Collie", petSize: "Large", petGender: "Male")
        self.dogArray.append(dog14)
        
        let dog15 = Dog(petName: "Jude", petAge: "7 years", petImage: "p15 - Jude", petBreed: "Kelpie/Jack Russel mix", petSize: "Medium", petGender: "Male")
        self.dogArray.append(dog15)
        
        let dog16 = Dog(petName: "Kellie", petAge: "2 years", petImage: "p16 - Kellie", petBreed: "Rat Terrier", petSize: "Small", petGender: "Female")
        self.dogArray.append(dog16)
        
        let dog17 = Dog(petName: "Kevin", petAge: "6 years", petImage: "p17 - Kevin", petBreed: "Cocker Spaniel", petSize: "Medium", petGender: "Male")
        self.dogArray.append(dog17)
        
        let dog18 = Dog(petName: "Lady", petAge: "5 years", petImage: "p18 - Lady", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Female")
        self.dogArray.append(dog18)
        
        let dog19 = Dog(petName: "Liesl", petAge: "1 year", petImage: "p19 - Liesl", petBreed: "Pit Bull Terrier", petSize: "Medium", petGender: "Female")
        self.dogArray.append(dog19)
        
        let dog20 = Dog(petName: "Lucy", petAge: "1 year", petImage: "p20 - Lucy", petBreed: "Border Collie", petSize: "Large", petGender: "Female")
        self.dogArray.append(dog20)
        
    }
    
    func addDog(dog : Dog) {
        self.dogArray.append(dog)
        
    }
    
    func addFavoriteDog(dog : Dog) {
        self.favoriteDogsArray.append(dog)
    }
    
    
    func removeDog() {
        self.dogArray.removeAll()
    }
    
    func clearFavorites() {
        self.favoriteDogsArray.removeAll()
    }
    
    func dogAtIndex(index : Int) -> Dog? {
        if self.dogArray.count >= 0 && index < self.dogArray.count {
            return self.dogArray[index]
        }
        return nil
    }
    
    func favoriteDogAtIndex(index : Int) -> Dog? {
        if self.favoriteDogsArray.count >= 0 && index < self.favoriteDogsArray.count {
            return self.favoriteDogsArray[index]
        }
        return nil 
    }
    
    func numberOfDogs() -> Int {
        return self.dogArray.count
    }
    
    func favoriteNumberOfDogs() -> Int {
        return self.favoriteDogsArray.count
    }

}
