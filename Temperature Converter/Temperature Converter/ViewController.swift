//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Renato High on 06/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var count = 0
    
    
   
    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var conversionNumLabel: UILabel!
  
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func conversionClicked(_ sender: Any) {
        if  let result = tempEntry.text {
            if  (result == ""){
                return
            }
            else {
                if  let num = Double(result){
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    
                    updateCountByOne()
                    
                }
            }
        }
    }
    
    func updateCountByOne(){
        count += 1
        conversionNumLabel.text = String("\(count) conversion")
    }
    
}

