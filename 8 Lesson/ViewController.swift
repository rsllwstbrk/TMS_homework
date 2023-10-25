//
//  ViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 23.10.23.
//

import UIKit

class Menu {
    
    var mainDishes = Positions.self
    var drinks = Positions.self
    var snacks = Positions.self
    var desserts = Positions.self
    
}

class Positions {
    
    var name = ""
    var cost: Int = 0
    init(name: String, cost: Int) {
        self.name = name
        self.cost = cost
    }
    func food() {print(name, cost)}
}

    
    
    class ViewController: UIViewController {
        
        override func viewDidLoad() {
            super.viewDidLoad()

    var beer = Positions(name: "Bud", cost: 8)
            beer.food()
            
            
        }
        
        
    }
