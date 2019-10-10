//
//  ViewController.swift
//  Cuenta
//
//  Created by CCDM24 on 10/9/19.
//  Copyright © 2019 Naroh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: Properties
    @IBOutlet weak var textfieldCuenta: UITextField!
    @IBOutlet weak var labelTotal: UILabel!
    @IBOutlet weak var porcentaje: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions

    @IBAction func calcularTotal(_ sender: Any) {
        var total = 0.0
        var cuenta = 0.0
        if  Double(textfieldCuenta.text!) != nil {
            
        
            switch porcentaje.selectedSegmentIndex {
            case 0:
                cuenta = Double(textfieldCuenta.text!)!
                total = cuenta * 0.10 + cuenta
            case 1:
                cuenta = Double(textfieldCuenta.text!)!
                total = cuenta * 0.20 + cuenta
                
            case 2:
                cuenta = Double(textfieldCuenta.text!)!
                total = cuenta * 0.30 + cuenta
            default:
                break
            }
            labelTotal.text = String(total)
        }
    }
    

}

