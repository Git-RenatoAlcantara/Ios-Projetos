//
//  MenuViewController.swift
//  ENG3 SE
//
//  Created by Renato High on 07/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit
protocol SlideMenuDelegate {
    func slideMenuItemsSelectedAtIndex(_ index: Int32)
}

class MenuViewController: UIViewController {
    
    var btnMenu: UIButton!
    var delegate: SlideMenuDelegate?
    
    @IBOutlet weak var btnCloseMenuOverlay: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func btnCloseTapped(_ sender: UIButton) {
        btnMenu.tag = 0
        btnMenu.isHidden = false
        if (self.delegate != nil) {
            var index = Int32(sender.tag)
            if (sender == self.btnCloseMenuOverlay){
                index = -1
            }
            delegate?.slideMenuItemsSelectedAtIndex(index)
        }
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            self.view.frame=CGRect(x: -UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
        }, completion:{ (finished) -> Void in
            self.view.removeFromSuperview()
            self.removeFromParent()
            
        })
    }
    
    

}
