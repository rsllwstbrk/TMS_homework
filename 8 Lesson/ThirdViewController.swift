//
//  ThirdViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 7.11.23.
//

import UIKit

class ThirdViewController: UIViewController {
    
    func showNavBar() {
        self.navigationController?.isNavigationBarHidden = false}
    
    @objc func forward() {
        let fourthViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController")
        navigationController?.pushViewController(fourthViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.rightBarButtonItem = .init(title: "Forward", image: nil, target: self, action: #selector(forward))
        showNavBar()
        
    }
    
}
