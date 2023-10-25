//
//  ViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 23.10.23.
//

import UIKit

class Menu {
    
    var mainDishes: Positions = MainDishes(name: "", cost: 0)
    var snacks: Positions = Snacks(name: "", cost: 0)
    var drinks: Positions = Drinks(name: "", cost: 0)
    var desserts: Positions = Desserts(name: "", cost: 0)
    
}

class Positions {
    
    var name = ""
    var cost: Int = 0
    init(name: String, cost: Int) {
        self.name = name
        self.cost = cost
    }
    func food() {}
}

class Snacks: Positions {
    override func food() {print(name, cost)}
}
class Drinks: Positions {
    override func food() {print(name, cost)}
}
class MainDishes: Positions {
    override func food() {print(name, cost)}
}
class Desserts: Positions {
    override func food() {print(name, cost)}
}

    
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()

    var chips = Snacks(name: "lays", cost: 15)
            chips.food()
            
            
        }
        
        
    }
