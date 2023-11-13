//
//  FourthViewController.swift
//  8 Lesson
//
//  Created by Rsllwstbrk on 7.11.23.
//

import UIKit

class FourthViewController: UIViewController {

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        var menuItems: [UIAction] {
            return [
                UIAction(title: "Chicken, 10$", image: UIImage(systemName: "fork.knife.circle.fill"), handler: { (_) in }),
                UIAction(title: "Chips, 5$", image: UIImage(systemName: "carrot"), handler: { (_) in }),
                UIAction(title: "Cola, 8$", image: UIImage(systemName: "cup.and.saucer"), handler: { (_) in }),
                UIAction(title: "Cake, 9$", image: UIImage(systemName: "birthday.cake"), handler: { (_) in }),
                UIAction(title: "Borshch, 10$", image: UIImage(systemName: "fork.knife.circle"), handler: { (_) in })
            ]
        }
        
        var demoMenu: UIMenu {
            return UIMenu(title: "My menu", image: nil, identifier: nil, options: [], children: menuItems)
        }

        func showMenuButton() {
            menuButton.menu = demoMenu
            menuButton.showsMenuAsPrimaryAction = true
        }
        
       let menuButton = UIButton()
        view.addSubview(menuButton)
        menuButton.showsMenuAsPrimaryAction = true
        menuButton.backgroundColor = .black
        menuButton.setTitle("Menu", for: .normal)
        menuButton.translatesAutoresizingMaskIntoConstraints = false
        menuButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        menuButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        menuButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        menuButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        menuButton.titleLabel?.textColor = .white
        menuButton.menu = UIMenu(title: "Restaurant Menu", children: menuItems)
        
        

    }


}
