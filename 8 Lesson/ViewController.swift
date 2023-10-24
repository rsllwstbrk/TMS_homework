//
//  ViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 23.10.23.
//

import UIKit

class Menu {
    
    var barName: String = ""
    var isElectronic: Bool = true
    
}

class Positions {
    
    var name: String = ""
    var price: Int = 0
    func food () {}
}

class Snacks: Positions {
    override init () {
        super.init()
        name = "snacks"
    }
    override func food () {
        print(name, price)
    }
    
}

class MainDishes: Positions {
    override init () {
        super.init()
        name = "mainDishes"
    }
    override func food () {
        print(name, price)
    }
    
}

class Drinks: Positions {
    override init () {
        super.init()
        name = "drinks"
    }
    override func food () {
        print(name, price)
    }
    
}

class Desserts: Positions {
    override init () {
        super.init()
        name = "desserts"
    }
    override func food () {
        print(name, price)
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let popcorn = Snacks()
        popcorn.name = "Corny"
        popcorn.price = 12
        popcorn.food()
        
        let wings = MainDishes()
        wings.name = "Wingy"
        wings.price = 15
        wings.food()

        
        let beer = Drinks()
        beer.name = "Corny"
        beer.price = 18
        beer.food()

        
        let cake = Desserts()
        cake.name = "Moon"
        cake.price = 20
        cake.food()


    }


}

