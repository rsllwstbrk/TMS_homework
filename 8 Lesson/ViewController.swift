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
    var countDishes: Int = 0
    var countSnacks: Int = 0
    var countDrinks: Int = 0
    var countDesserts: Int = 0
    var countSoups: Int = 0
    func increaseDishes() {countDishes += menu.mainDishes.cost}
    func increaseSnacks() {countSnacks += menu.snacks.cost}
    func increaseDrinks() {countDrinks += menu.drinks.cost}
    func increaseDesserts() {countDesserts += menu.desserts.cost}
    func increaseSoups() {countSoups += menu.soups.cost}
    
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
            model.countDishes = 0
            model.countSoups = 0
            model.countDrinks = 0
            model.countSnacks = 0
            model.countDesserts = 0
            DishesLabel.text = String(0)
            DrinksLabel.text = String(0)
            DessertsLabel.text = String(0)
            SnacksLabel.text = String(0)
            SoupsLabel.text = String(0)
            print("Shift Starts. 0$ in Cash Machine")
        }
        
        
        @IBOutlet weak var DishesLabel: UILabel!
        @IBAction func MainDishes(_ sender: UIButton) {
            model.increaseDishes()
            
            DishesLabel.text = String(model.countDishes)
        }
        
        
        @IBOutlet weak var SnacksLabel: UILabel!
        @IBAction func Snacks(_ sender: UIButton) {
            model.increaseSnacks()
            SnacksLabel.text = String(model.countSnacks)
        }
        
        @IBOutlet weak var DrinksLabel: UILabel!
        @IBAction func Drinks(_ sender: UIButton) {
            model.increaseDrinks()
            DrinksLabel.text = String(model.countDrinks)
        }
        
        @IBOutlet weak var DessertsLabel: UILabel!
        
        @IBAction func Desserts(_ sender: UIButton) {
            model.increaseDesserts()
            DessertsLabel.text = String(model.countDesserts)
        }
        
        @IBOutlet weak var SoupsLabel: UILabel!
        @IBAction func Soups(_ sender: UIButton) {
            model.increaseSoups()
            SoupsLabel.text = String(model.countSoups)
        }
        
        @IBAction func ShiftEnd(_ sender: UIButton) {
            print("Shift Ends Up With \(model.countSoups + model.countDishes + model.countDrinks + model.countSnacks + model.countDesserts)$ in Cash Machine")
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            print("Shift Starts. 0$ in Cash Machine")
            
        }
        
        
    }
