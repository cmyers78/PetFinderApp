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
        
        let dog1 = Dog(petName: "Athena", petAge: "5 years", petImage: "p1 - Athena", petBreed: "Chihuahua", petSize: "Small", petGender: "Female", petBackground: "Meet Athena! Athena is a 5-year-old Chihuahua. This pint-sized girl is full of personality and will make a great companion! She gets along well with other small, non-dominant dogs… she especially likes her little friend, Zeus. Athena loves being carried around in the arms of her human companion, like most small dogs do! Come meet and fall in love with Athena today!")
        self.dogArray.append(dog1)
        
        let dog2 = Dog(petName: "Audi", petAge: "8 months", petImage: "p2 - Audi", petBreed: "Lab mix", petSize: "Medium", petGender: "Female", petBackground: "Audi is an 8-month-old Lab mix. She is mostly black with some white accents, and her coat is a bit wiry. She is all puppy all the the time. She will be a great hiking or running buddy and would love space to live and a family to adore. Audi won’t last long so come and adopt her today!")
        self.dogArray.append(dog2)
        
        let dog3 = Dog(petName: "Basil", petAge: "6.5 years", petImage: "p3 - Basil", petBreed: "Basset Hound mix", petSize: "Large", petGender: "Male", petBackground: "Basil is a sweet 6 year old male Bassett Hound mix. He is a happy go lucky dog! Basil knows a few obedience commands (sit & down) Further obedience training wouldn’t hurt. He is very eager to learn and very eager to please. He gets along well with other similar sized dogs but is not too found of the felines. Basil enjoys going to leisurely walks, exploring the outdoors, playing with toys and hanging out with his favorite humans. Basil will make a great companion for any family!")
        self.dogArray.append(dog3)
        
        let dog4 = Dog(petName: "Beaufort", petAge: "6 years", petImage: "p4 - Beaufort", petBreed: "Hound", petSize: "Large", petGender: "Male", petBackground: "Beaufort is a beautiful 6 year old hound. He is a loving little man. He has lived with other dogs before and with a proper introduction he would love a friend. He acts as if he has never seen a cat before and could possibly live with a cat as well. Meet him today!")
        self.dogArray.append(dog4)
        
        let dog5 = Dog(petName: "Biroldo", petAge: "4 years", petImage: "p5 - Biroldo", petBreed: "Dachshund", petSize: "Small", petGender: "Male", petBackground: "Biroldo is a very sweet Dachhund mix. He is about 4 years of age and very out going! He is bonded with his brother Cotechino and needs to be in a home that will take both of them together. He is good with other small dogs and cats with a proper introduction.")
        self.dogArray.append(dog5)
        
        let dog6 = Dog(petName: "Calvin", petAge: "8 years", petImage: "p6 - Calvin", petBreed: "Jack Russell", petSize: "Medium", petGender: "Male", petBackground: "Calvin is a friendly little Jack Russel mix. He is approximately 7 years old. He likes other small dogs when introduced properly, but is a bit nervous around cats and prefers to avoid them, along with large dogs. He walks well on a leash and has no problem with stairs. Meet him today!")
        self.dogArray.append(dog6)
        
        let dog7 = Dog(petName: "Caspian", petAge: "2 years", petImage: "p7 - Caspian", petBreed: "Pit/Shepherd mix", petSize: "Large", petGender: "Male", petBackground: "Caspian is a handsome and oh so nice Shepherd/Pit Bull mix. He is about a year and a half old and is ready for a family to call his own. He would do great with basic obedience training and lots of activity with his new family. He would make an awesome hiking buddy and will be a constant companion. Make him a part of your family today!")
        self.dogArray.append(dog7)
        
        let dog8 = Dog(petName: "Cher", petAge: "5 years", petImage: "p8 - Cher", petBreed: "Chihuahua", petSize: "Small", petGender: "Female", petBackground: "Sorry, no description available.")
        self.dogArray.append(dog8)
        
        let dog9 = Dog(petName: "Cora", petAge: "5 years", petImage: "p9 - Cora", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Female", petBackground: "Cora is a 4 1/2 year old female pit bull terrier. This cute girl knows all her basic commands (sit, stay, come, heel) and is house trained and crate trained. Cora would do best in an active household. She loves going for walks and exploring the outdoors. She would need to be the only animal in the house, she does not get along with other dogs or cats. Cora has a lot of love to give and would love a family to call her own!")
        self.dogArray.append(dog9)
        
        let dog10 = Dog(petName: "Cotechino", petAge: "10 years", petImage: "p10 - Cotechino", petBreed: "Miniature Pinscher", petSize: "Small", petGender: "Male", petBackground: "Cotechino is a fun loving 10 year old min pin mix. He is part of a bonded pair with his friend Biroldo. He helps his one eyed friend get around and will panick a bit if they are separated. He needs to be adopted with his friend. He has no problems with stairs and loves going on leash! Adopt today!")
        self.dogArray.append(dog10)
        
        let dog11 = Dog(petName: "Daisy", petAge: "1 year", petImage: "p11 - Daisy", petBreed: "Pit Bull Terrier", petSize: "Medium", petGender: "Female", petBackground: "Daisy is a very energetic year old female Pitbull mix. She can be in a home with other dogs, but needs a proper introduction. She can be shy at first but once she gets to know you she likes to think she is a lap dog. She needs lots of daily exercise and stimulation. She needs an owner who can set clear boundaries. She can be with kids but might knock small children down out of excitement.")
        self.dogArray.append(dog11)
        
        let dog12 = Dog(petName: "Flick", petAge: "3 years", petImage: "p12 - Flick", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Male", petBackground: "Flick is a loving and happy 7 year old pit bull mix. He ended up in the shelter when his family was deployed for two years for military service. He likes all people but would do best in a home with smaller or medium sized dogs. He loves all people and would make a great hiking buddy and has a lot of energy so an active person or family is high on his wish list. Give this boy the home he deserves and adopt him now.")
        self.dogArray.append(dog12)
        
        let dog13 = Dog(petName: "Froggers", petAge: "7 years", petImage: "p13 - Froggers", petBreed: "Boston Terrier", petSize: "Medium", petGender: "Male", petBackground: "Meet Froggers! This Boston Terrier is looking for a home with his best buddy Binkers! They are here after living together with their owner who’s new wife didn’t want them. Froggers is a little perfect gentleman who has been described as a gem. He is so cute and will make you smile with love. Adopt these boys today.")
        self.dogArray.append(dog13)
        
        let dog14 = Dog(petName: "Hendrick", petAge: "10 years", petImage: "p14 - Hendrick", petBreed: "Border Collie", petSize: "Large", petGender: "Male", petBackground: "Hendrick is a sweet 10 year old male border collie. He is very mellow, and gets along with everyone.")
        self.dogArray.append(dog14)
        
        let dog15 = Dog(petName: "Jude", petAge: "7 years", petImage: "p15 - Jude", petBreed: "Kelpie/Jack Russel mix", petSize: "Medium", petGender: "Male", petBackground: "Hey, Jude! This handsome fellow is an energetic and athletic 7-year-old Jack Russell/Kelpie mix. He is very intelligent and knows all of his basic commands (and then some!). Jude needs a home with an active family who can provide him with adequate exercise for both his body and mind. He definitely needs a big back yard where he can run and play, too! He would do best in a home without young children (teens and up would be best). Jude loves to be outdoors — he’ll gladly accompany you when you go swimming, mountain biking, hiking, or just for a jog around the block. Jude is a very loyal, attentive, and charismatic dog who is looking for a special forever family to call his own. Come meet him today!")
        self.dogArray.append(dog15)
        
        let dog16 = Dog(petName: "Kellie", petAge: "2 years", petImage: "p16 - Kellie", petBreed: "Rat Terrier", petSize: "Small", petGender: "Female", petBackground: "Meet Kelly! She is a very beautiful 2 year old chihuahua mix with extraordinary markings! The only thing that matches her beauty is her exceptional personality! Once this girl warms up to you, she is a steady companion. Come meet Kelly at the Ranch today!")
        self.dogArray.append(dog16)
        
        let dog17 = Dog(petName: "Kevin", petAge: "6 years", petImage: "p17 - Kevin", petBreed: "Cocker Spaniel", petSize: "Medium", petGender: "Male", petBackground: "Kevin is an adorable 6 year old male Cocker Spaniel mix. Kevin is a very playful and fun dog. He enjoys leisurely walks, exploring the outdoors and spending time with his favorite humans. He enjoys the company of other friendly dogs and with proper introduction could learn to share a home with a furry feline. Kevin knows some basic obedience commands but a refresher course wouldn’t hurt. He is smart and eager to please. Kevin is crate trained and house trained. This great little guy will make a wonderful addition to any family!")
        self.dogArray.append(dog17)
        
        let dog18 = Dog(petName: "Lady", petAge: "5 years", petImage: "p18 - Lady", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Female", petBackground: "Lady is a silly and lovable 5-year-old Pit Bull Terrier. She is a sweet, sweet girl who loves affection and cuddling. Lady likes playing outdoors, going for walks, playing with her toys and cuddling up with her favorite human friends. Lady knows her basic obedience commands and is eager to please. She is fully house trained and crate trained. Lady would do best in a moderately active household with no cats and older children. Lady enjoys the company of other non-dominant dogs. Lady will make a wonderful addition to any family!!")
        self.dogArray.append(dog18)
        
        let dog19 = Dog(petName: "Liesl", petAge: "1 year", petImage: "p19 - Liesl", petBreed: "Pit Bull Terrier", petSize: "Medium", petGender: "Female", petBackground: "Leisl is a pit bull terrier that has had a tough start in life. She was used as a bait dog in a fighting ring. She came to us in very poor condition but we are giving lots of TLC and she is slowly on the mend. This girl has a lot of love to give and deserves the best home possible. She is only 1 year old and has many memories to make with you! Come to the rescue ranch and meet her now!")
        self.dogArray.append(dog19)
        
        let dog20 = Dog(petName: "Lucy", petAge: "1 year", petImage: "p20 - Lucy", petBreed: "Border Collie", petSize: "Large", petGender: "Female", petBackground: "Lucy is a very sweet 1 year old female border collie, she is good with other dogs and possibly cats. She is very out going, and preferably needs a home with a fence. Adopt her today!")
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
