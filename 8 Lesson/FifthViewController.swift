//
//  FifthViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 8.11.23.
//

import UIKit

class FifthViewController: UIViewController {
    
    func buttonTapped() {
        var viewControllers = navigationController?.viewControllers
        viewControllers?.swapAt(2, 3)
        viewControllers?.swapAt(0, 1)
        navigationController?.setViewControllers(viewControllers ?? [], animated: true)
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        buttonTapped()
    }
    
    
}
