//
//  SecondViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 7.11.23.
//

import UIKit

class SecondViewController: UIViewController {
    
    func deleteNavBar() {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        deleteNavBar()
        
    }
    
    
}
