//
//  ViewController.swift
//  DevWorldNCR
//
//  Created by Mit Amin on 10/20/18.
//  Copyright © 2018 Mit Amin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sideMenuConstraint: NSLayoutConstraint!
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver((self), selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    @objc func toggleSideMenu(){
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuConstraint.constant = -250
        }
        else{
            sideMenuConstraint.constant = 0
            sideMenuOpen = true
        }
        UIView.animate(withDuration: 0.3){self.view.layoutIfNeeded()}
    }
}

