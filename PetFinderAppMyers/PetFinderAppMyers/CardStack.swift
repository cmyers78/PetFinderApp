//
//  CardStack
//
//
//  Created by Phil Wright on 7/6/16.
//  Copyright © 2016 torch. All rights reserved.
//

import UIKit

protocol CardStackDelegate : class {
    func cardInterested(dog: Dog)
    func cardNotInterested(dog: Dog)
}

class CardStack : UIView {
    
    var cards: [CardView] = []
    weak var delegate : CardStackDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        seedDogs()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clearColor()
        seedDogs()
    }
    
    func seedDogs() {
        
        
        let dog1 = Dog(petName: "Athena", petAge: "5 years", petImage: "p1 - Athena", petBreed: "Chihuahua", petSize: "Small", petGender: "Female")
        self.addDog(dog1)
        
        let dog2 = Dog(petName: "Audi", petAge: "8 months", petImage: "p2 - Audi", petBreed: "Lab mix", petSize: "Medium", petGender: "Female")
        self.addDog(dog2)
        
        let dog3 = Dog(petName: "Basil", petAge: "6.5 years", petImage: "p3 - Basil", petBreed: "Basset Hound mix", petSize: "Large", petGender: "Male")
        self.addDog(dog3)
        
        let dog4 = Dog(petName: "Beaufort", petAge: "6 years", petImage: "p4 - Beaufort", petBreed: "Hound", petSize: "Large", petGender: "Male")
        self.addDog(dog4)
        
        let dog5 = Dog(petName: "Biroldo", petAge: "4 years", petImage: "p5 - Biroldo", petBreed: "Dachshund", petSize: "Small", petGender: "Male")
        self.addDog(dog5)
        
        let dog6 = Dog(petName: "Calvin", petAge: "8 years", petImage: "p6 - Calvin", petBreed: "Jack Russell", petSize: "Medium", petGender: "Male")
        self.addDog(dog6)
        
        let dog7 = Dog(petName: "Caspian", petAge: "2 years", petImage: "p7 - Caspian", petBreed: "Pit/Shepherd mix", petSize: "Large", petGender: "Male")
        self.addDog(dog7)
        
        let dog8 = Dog(petName: "Cher", petAge: "5 years", petImage: "p8 - Cher", petBreed: "Chihuahua", petSize: "Small", petGender: "Female")
        self.addDog(dog8)
        
        let dog9 = Dog(petName: "Cora", petAge: "5 years", petImage: "p9 - Cora", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Female")
        self.addDog(dog9)
        
        let dog10 = Dog(petName: "Cotechino", petAge: "10 years", petImage: "p10 - Cotechino", petBreed: "Miniature Pinscher", petSize: "Small", petGender: "Male")
        self.addDog(dog10)
        
        let dog11 = Dog(petName: "Daisy", petAge: "1 year", petImage: "p11 - Daisy", petBreed: "Pit Bull Terrier", petSize: "Medium", petGender: "Female")
        self.addDog(dog11)
        
        let dog12 = Dog(petName: "Flick", petAge: "3 years", petImage: "p12 - Flick", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Male")
        self.addDog(dog12)
        
        let dog13 = Dog(petName: "Froggers", petAge: "7 years", petImage: "p13 - Froggers", petBreed: "Boston Terrier", petSize: "Medium", petGender: "Male")
        self.addDog(dog13)
        
        let dog14 = Dog(petName: "Hendrick", petAge: "10 years", petImage: "p14 - Hendrick", petBreed: "Border Collie", petSize: "Large", petGender: "Male")
        self.addDog(dog14)
        
        let dog15 = Dog(petName: "Jude", petAge: "7 years", petImage: "p15 - Jude", petBreed: "Kelpie/Jack Russel mix", petSize: "Medium", petGender: "Male")
        self.addDog(dog15)
        
        let dog16 = Dog(petName: "Kellie", petAge: "2 years", petImage: "p16 - Kellie", petBreed: "Rat Terrier", petSize: "Small", petGender: "Female")
        self.addDog(dog16)
        
        let dog17 = Dog(petName: "Kevin", petAge: "6 years", petImage: "p17 - Kevin", petBreed: "Cocker Spaniel", petSize: "Medium", petGender: "Male")
        self.addDog(dog17)
        
        let dog18 = Dog(petName: "Lady", petAge: "5 years", petImage: "p18 - Lady", petBreed: "Pit Bull Terrier", petSize: "Large", petGender: "Female")
        self.addDog(dog18)
        
        let dog19 = Dog(petName: "Liesl", petAge: "1 year", petImage: "p19 - Liesl", petBreed: "Pit Bull Terrier", petSize: "Medium", petGender: "Female")
        self.addDog(dog19)
        
        let dog20 = Dog(petName: "Lucy", petAge: "1 year", petImage: "p20 - Lucy", petBreed: "Border Collie", petSize: "Large", petGender: "Female")
        self.addDog(dog20)
    }
    
    func addDog(dog: Dog) {
        
        let card = CardView()
        card.dog = dog
        self.addSubview(card)
        
        card.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: card, attribute: .Top, relatedBy: .Equal, toItem: self, attribute: .Top, multiplier: 1, constant: 0).active = true
        NSLayoutConstraint(item: card, attribute: .Left, relatedBy: .Equal, toItem: self, attribute: .Left, multiplier: 1, constant: 0).active = true
        NSLayoutConstraint(item: card, attribute: .Right, relatedBy: .Equal, toItem: self, attribute: .Right, multiplier: 1, constant: 0).active = true
        NSLayoutConstraint(item: card, attribute: .Bottom, relatedBy: .Equal, toItem: self, attribute: .Bottom, multiplier: 1, constant: 0).active = true
        cards.append(card)
        self.sendSubviewToBack(card)
        
        setupTransforms(0)
        
        setupGestures()
    }
    
    func setupTransforms(percentCompletion: Double) {
        let translationDelta: CGFloat = 6
        
        for (i, card) in cards.enumerate() {
            if i == 0 { continue; }
            
            var translationA, rotationA, scaleA: CGFloat!
            var translationB, rotationB, scaleB: CGFloat!
            
            if i % 2 == 0 {
                translationA = CGFloat(i)*translationDelta
                rotationA = CGFloat(M_PI)/100*CGFloat(i)
                
                translationB = -CGFloat(i-1)*translationDelta
                rotationB = -CGFloat(M_PI)/100*CGFloat(i-1)
            } else {
                translationA = -CGFloat(i)*translationDelta
                rotationA = -CGFloat(M_PI)/100*CGFloat(i)
                
                translationB = CGFloat(i-1)*translationDelta
                rotationB = CGFloat(M_PI)/100*CGFloat(i-1)
            }
            
            scaleA = 1-CGFloat(i)*0.05
            scaleB = 1-CGFloat(i-1)*0.05
            
            let translation = translationA*(1-CGFloat(percentCompletion))+translationB*CGFloat(percentCompletion)
            let rotation = rotationA*(1-CGFloat(percentCompletion))+rotationB*CGFloat(percentCompletion)
            let scale = scaleA*(1-CGFloat(percentCompletion))+scaleB*CGFloat(percentCompletion)
            
            var transform = CGAffineTransformIdentity
            
            transform = CGAffineTransformTranslate(transform, translation, 0)
            transform = CGAffineTransformRotate(transform, rotation)
            transform = CGAffineTransformScale(transform, scale, scale)
            
            
            card.transform = transform
        }
    }
    
    func setupGestures() {
        for card in cards {
            let gestures = card.gestureRecognizers ?? []
            for gesture in gestures {
                card.removeGestureRecognizer(gesture)
            }
        }
        
        if let firstCard = cards.first {
            firstCard.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(CardStack.pan(_:))))
        }
    }
    
    func pan(gesture: UIPanGestureRecognizer) {
        
        let card = gesture.view! as! CardView
        
        let translation = gesture.translationInView(self)
        
        var percent = translation.x / CGRectGetMidX(self.bounds)
        percent = min(percent, 1)
        percent = max(percent, -1)
        
        UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.65, initialSpringVelocity: 1, options: [], animations: { () -> Void in
            self.setupTransforms(abs(Double(percent)))
        }, completion: nil)
        
        if percent > 0.2 && gesture.state == .Ended {
            
            // Important call delegate
            self.delegate?.cardInterested(card.dog)
            
        } else if percent < -0.2 && gesture.state == .Ended {
            
            // Important call delegate
            self.delegate?.cardNotInterested(card.dog)
        }
        
        var transform = CGAffineTransformIdentity
        transform = CGAffineTransformTranslate(transform, translation.x, translation.y)
        transform = CGAffineTransformRotate(transform, CGFloat(M_PI)*percent/30)
        
        card.transform = transform
        
        if gesture.state == .Ended {
            let velocity = gesture.velocityInView(self)
            
            let percentBlock = {
                self.cards.removeAtIndex(self.cards.indexOf(card)!)
                self.setupGestures()
                card.removeGestureRecognizer(card.gestureRecognizers![0])
                
                let slope = translation.y / translation.x
                let distance = max(UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height)
                
                let y = distance*sqrt(1+1/(slope*slope))
                let x = y / slope
                
                let normVelX = velocity.x / x
                let normVelY = velocity.y / y
                
                UIView.animateWithDuration(1.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: normVelX, options: [], animations: { () -> Void in
                    card.center.x = x
                    }, completion: nil)
                
                UIView.animateWithDuration(1.2, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: normVelY, options: [], animations: { () -> Void in
                    card.center.y = y
                    }, completion: nil)
            }
            
            if percent > 0.2 {
                percentBlock()
            } else if percent < -0.2 {
                percentBlock()
            } else {
                let normVelX = -velocity.x / translation.x
                let normVelY = -velocity.y / translation.y
                
                UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: { () -> Void in
                    }, completion: nil)
                
                UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.75, initialSpringVelocity: normVelX, options: [], animations: { () -> Void in
                    var transform = CGAffineTransformIdentity
                    transform = CGAffineTransformTranslate(transform, 0, translation.y)
                    card.transform = transform
                    }, completion: nil)
                
                UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.75, initialSpringVelocity: normVelY, options: [], animations: { () -> Void in
                    var transform = CGAffineTransformIdentity
                    transform = CGAffineTransformTranslate(transform, 0, 0)
                    card.transform = transform
                    }, completion: nil)
            }
        
            UIView.animateWithDuration(0.75, delay: 0, usingSpringWithDamping: 0.65, initialSpringVelocity: 1, options: [], animations: { () -> Void in
                self.setupTransforms(0)
                }, completion: nil)
        }
    }
}