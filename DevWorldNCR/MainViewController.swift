//
//  MainViewController.swift
//  DevWorldNCR
//
//  Created by Mit Amin on 10/20/18.
//  Copyright © 2018 Mit Amin. All rights reserved.
//

import UIKit
struct cell {
    let imageC: UIImage?
    let textC: String?
    let id: String?
}

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate  {
    
    let dataImage = [cell.init(imageC: UIImage(named: "water"), textC: "Water Filter", id: "A"),
                     cell.init(imageC: UIImage(named: "bulb"), textC: "Mud Bulb", id: "B"),
                     cell.init(imageC: UIImage(named: "more"), textC: "More Coming Soon", id: "C")
                     ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onHamTapped(_ sender: UIBarButtonItem) {
        NotificationCenter.default.post(name:NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataImage.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "self", for: indexPath) as! CollectionViewCell
        cell.itemText.text = dataImage[indexPath.row].textC
        cell.itemImage.image = dataImage[indexPath.row].imageC
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius:
            cell.contentView.layer.cornerRadius).cgPath
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let name = dataImage[indexPath.row].id
        let other = storyboard?.instantiateViewController(withIdentifier: "C")

        if (name == "B") {
            let vc = storyboard?.instantiateViewController(withIdentifier: name!)
            self.navigationController?.pushViewController(vc!, animated: true)

        }
        else{
            self.navigationController?.pushViewController(other!, animated: true)
        }
    }
    
}

