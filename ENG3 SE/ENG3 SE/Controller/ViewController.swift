//
//  ViewController.swift
//  ENG3 SE
//
//  Created by Renato High on 07/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    @IBOutlet weak var cardView1: UIView!
    @IBOutlet weak var cardView2: UIView!
    @IBOutlet weak var cardView3: UIView!
    @IBOutlet weak var cardView4: UIView!
    @IBOutlet weak var cardView5: UIView!
    @IBOutlet weak var cardView6: UIView!
    
    
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
     
       
     
        addSlideMenuButton()
        cardViews(cardView1, cardView2, cardView3, cardView4, cardView5, cardView6)
      
    }
    
    func cardViews(_ cards: UIView...){
        for cardIndex in cards {
            cardIndex.layer.shadowColor = UIColor.black.cgColor
            cardIndex.layer.cornerRadius = 5
            cardIndex.layer.shadowOpacity = 0.5
            cardIndex.layer.shadowOffset = CGSize(width: 1, height: 1)
            cardIndex.layer.shadowRadius = 2
        }
    }
}

