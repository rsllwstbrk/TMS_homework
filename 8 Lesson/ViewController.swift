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
}

class Snacks: Positions {
}
class Drinks: Positions {
}
class MainDishes: Positions {
}
class Desserts: Positions {
}

    
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            
            func food (position: Positions) {
                print("\(position.name)", "\(position.cost)")
            }
            food(position: Snacks(name: "Bud", cost: 13))
            
           
            
        }
        
        
    }
