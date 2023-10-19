//
//  ViewController.swift
//  Sixth Lesson
//
//  Created by Rsllwstbrk on 17.10.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var array: Array = ["abc", "dwefgefg13", "oiut", "qwertfds", "3fdvdsfvv", "qwef gsdjkfnb", "qegbg sdg qwe"]
        
        // задание 1
        
        var sum: Int = 0
        let sumArray = array.map { $0.count }.map({Int(exactly: $0)! })
        for element in sumArray {
            sum += element
        }
        print(sum)
        
        var sumArray1 = array.reduce(0, { $0 + $1.count})
        print(sumArray1)
        print(" ")
        
        // задание 2
        
        let result = array
            .filter({ element in
                if (element.count >= 5) {
                    return true
                } else {
                    return false}
            })
        print(result)
        print(" ")
        
        // задание 3
        
        let result1 = array.filter ({ element in
            if (element.count > 10) {
                return true
            } else {
                return false
            }
        })
        print(result1.count)
        print(" ")
        
        
        // задание 4
        
        let sorted = array.sorted { $0.count < $1.count }
        let sortedMax = sorted.max()
        print(sorted[5])
        print(sorted.last)
        print(" ")
        
        // задание 5
        
        let sorted1 = array.sorted { $0.count < $1.count }
        print(sorted1)
        print(" ")
        
        // задание 6
        
        func replacement(array1: Array<Any>, item1: String, item2: String/*string : inout [String]*/) -> () {
            for var string in array {
                if string.contains(item1) {
                return string.replace(item1, with: item2)
                } else {}
            }
        }
        print(replacement(array1: array, item1: " ", item2: ""))
        
    }

}
