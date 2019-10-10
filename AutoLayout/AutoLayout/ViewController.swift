//
//  ViewController.swift
//  AutoLayout
//
//  Created by CCDM24 on 10/10/19.
//  Copyright © 2019 Naroh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton){
        if sender.title(for: .normal) == "X" {
            sender.setTitle("Tengo ocho millones solo en estos pantalones", for: .normal)
        }else{
            sender.setTitle("X", for: .normal)
        }
    }


}

