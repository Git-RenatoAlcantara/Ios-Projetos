//
//  ViewController.swift
//  Calculadora
//
//  Created by Renato High on 15/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    //button actions
    @IBAction func numberClick(_ sender: UIButton){
       
    }
    
    
    @IBAction func operatorClicked(_ sender: UIButton){
        switch sender.tag{
        case 0:
            print("0")
        case 1:
            print("1")
        default:
            return
        }
    }
    
    @IBAction func equalsClicked(_ sender: UIButton){
        
    }

}

