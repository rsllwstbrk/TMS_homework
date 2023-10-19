//
//  ViewController.swift
//  Fifth Lesson Homework
//
//  Created by Rsllwstbrk on 14.10.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        // домашка 1.
        
        
                func primer1(_ x: Int, _ y: Int) -> Int {
                    x + y
                    }
                func primer1(_ x: Int, _ y: Int, _ z: Int) -> Int {
                    x - y - z
                    }
                func primer1(_ x: Double, _ y: Double) -> Double {
                    x / y
                    }
                func primer1(_ x: Double, _ y: Double, _ z: Double) -> Double {
                    x * y * z
                    }
        
                let a: Int = primer1 (10, 5)
                print(a)
                let b: Int = primer1 (100, 80, 12)
                print(b)
                let c: Double = primer1 (30, 15)
                print(c)
                let d: Double = primer1 (5, 2, 10)
                print(d)
        
        
        // домашка 2.
        
        
                func sum(_ a: Int) -> Int {
                    if a < 10
                    {
                        return a
                    }
                    else
                    {
                        return a % 10 + sum(a/10)
                    }
                }
                print(sum(229))
        
        
        // домашка 3.
        
        
                func stroki() -> String {
                    return "авб > ввш"
                }
        
                print (stroki())
        
        // домашка 4.
        
        var g: Int = 0
        
        func chislo() {
            print(a)
            g += 2
            chislo()}
        
        chislo()
        
        // домашка 5.
        
        func stepen(a: Double, b: Double) -> Double {
            return pow(a, b)
        }
        
        print(stepen(a: 2, b: 3))
            
        }
    }


