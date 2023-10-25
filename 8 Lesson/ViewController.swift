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
    var positions = Positions()
    let chicken = MainDishes()
    let cocktail = Drinks()
    let potato = Snacks()
    let iceCream = Desserts()
    
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
        
        let potato = Snacks()
        potato.name = "Fries"
        potato.price = 12
        potato.food()
        
        let chicken = MainDishes()
        chicken.name = "Spicy"
        chicken.price = 15
        chicken.food()

        
        let cocktail = Drinks()
        cocktail.name = "Long"
        cocktail.price = 18
        cocktail.food()

        
        let iceCream = Desserts()
        iceCream.name = "Moon"
        iceCream.price = 20
        iceCream.food()


    }


}

