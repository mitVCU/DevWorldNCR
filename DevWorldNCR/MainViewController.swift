//
//  MainViewController.swift
//  DevWorldNCR
//
//  Created by Mit Amin on 10/20/18.
//  Copyright © 2018 Mit Amin. All rights reserved.
//

import UIKit
struct cell {
    let image: UIImage?
    let text: String?
}

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onHamTapped(_ sender: UIBarButtonItem) {
        NotificationCenter.default.post(name:NSNotification.Name("ToggleSideMenu"), object: nil)
    }

    
    
}

