//
//  PopUpViewController.swift
//  MenuPopUp
//
//  Created by Renato High on 05/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var pop_up: UIButton!
    @IBOutlet weak var viewPopUp: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.viewPopUp.layer.cornerRadius = 5
    }
    

    @IBAction func touch_up(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
   
}
