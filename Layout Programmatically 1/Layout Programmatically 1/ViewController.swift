//
//  ViewController.swift
//  Layout Programmatically 1
//
//  Created by Renato High on 05/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    let label1: UILabel = {
        let lb = UILabel()
        lb.textColor = .white
        lb.textAlignment = NSTextAlignment.center
        lb.text = "UILabel view for text"
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.backgroundColor = .blue
        return lb
        
    }()
    
    let uv: UIView = {
        let uv = UILabel(frame: .zero)
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        
        view.addSubview(label1)
        self.view.addSubview(uv)
        
     
     
    
        
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-32-[v0(200)]-32-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : label1]))
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-32-[v0(50)]-32-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : label1]))
        
    }
}

