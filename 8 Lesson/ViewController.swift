//
//  ViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 23.10.23.
//

import UIKit

class Menu {
    
    var name: String = ""
    var price: Int = 0
    func food () {}
}

class snacks: Menu {
    override init () {
        super.init()
        name = "snacks"
    }
    override func food () {
        print(name, price)
    }
    
}

class mainDishes: Menu {
    override init () {
        super.init()
        name = "mainDishes"
    }
    override func food () {
        print(name, price)
    }
    
}

class drinks: Menu {
    override init () {
        super.init()
        name = "drinks"
    }
    override func food () {
        print(name, price)
    }
    
}

class desserts: Menu {
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
        
        let popcorn = snacks()
        popcorn.name = "Corny"
        popcorn.price = 12
        popcorn.food()
        
        let wings = mainDishes()
        wings.name = "Wingy"
        wings.price = 15
        wings.food()

        
        let beer = drinks()
        beer.name = "Corny"
        beer.price = 18
        beer.food()

        
        let cake = desserts()
        cake.name = "Moon"
        cake.price = 20
        cake.food()


    }


}

