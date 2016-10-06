//
//  HellaDetailViewController.swift
//  HellaCells
//
//  Created by Jhantelle Belleza on 10/6/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class HellaDetailViewController: UIViewController {

    @IBOutlet weak var bigLabel: UILabel!
    
    var number = 0
    
    override func viewWillAppear(_ animated: Bool) {
       bigLabel.text = String(number)
    }
}
