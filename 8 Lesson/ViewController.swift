//
//  ViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 23.10.23.
//

import UIKit

class Restaurant {
    
    var menu = Menu()
    static let shared = Restaurant()
    private init () {}
    var count: Int = 0
    func increaseDishes() {count += menu.mainDishes.cost}
    func increaseSnacks() {count += menu.snacks.cost}
    func increaseDrinks() {count += menu.drinks.cost}
    func increaseDesserts() {count += menu.desserts.cost}
    func increaseSoups() {count += menu.soups.cost}
    
}

class Menu {
    
    
    var mainDishes: Positions = MainDishes(name: "Chicken", cost: 10)
    var snacks: Positions = Snacks(name: "Chips", cost: 5)
    var drinks: Positions = Drinks(name: "Cola", cost: 8)
    var desserts: Positions = Desserts(name: "Cake", cost: 9)
    var soups: Positions = Soups(name: "Borshch", cost: 10)
    
}

class Positions {
    
    var name = ""
    var cost: Int = 0
    init(name: String, cost: Int) {
        self.name = name
        self.cost = cost
    }
}

class Snacks: Positions {}
class Drinks: Positions {}
class MainDishes: Positions {}
class Desserts: Positions {}
class Soups: Positions {}

    
    
    class ViewController: UIViewController {
        
        
        let model = Restaurant.shared
        
        
        @IBAction func ShiftStart(_ sender: UIButton) {
            model.count = 0
            print("Shift Starts. 0$ in Cash Machine")
        }
        
        
        @IBAction func MainDishes(_ sender: UIButton) {
            model.increaseDishes()
        }
        
        
        
        @IBAction func Snacks(_ sender: UIButton) {
            model.increaseSnacks()
        }
        
        
        
        @IBAction func Drinks(_ sender: UIButton) {
            model.increaseDrinks()
        }
        
        
        
        @IBAction func Desserts(_ sender: UIButton) {
            model.increaseDesserts()
        }
        
        
        
        @IBAction func Soups(_ sender: UIButton) {
            model.increaseSoups()
        }
        
        
        
        @IBAction func ShiftEnd(_ sender: UIButton) {
            print("Shift Ends Up With \(model.count)$ in Cash Machine")
        }
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            print("Shift Starts. 0$ in Cash Machine")
            
        }
        
        
    }
