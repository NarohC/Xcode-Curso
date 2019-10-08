//
//  ViewController.swift
//  IOSNaroh
//
//  Created by CCDM24 on 10/7/19.
//  Copyright © 2019 Naroh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var colorNegro = false;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Mark - Action

    @IBAction func changeColor(_ sender: Any) {
        if !colorNegro{
            view.backgroundColor  = UIColor.darkGray
            colorNegro = true
        }else{
            view.backgroundColor = UIColor.green
            colorNegro = false
        }
        
    }
    
}

