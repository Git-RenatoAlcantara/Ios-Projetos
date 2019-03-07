//
//  CardController.swift
//  SideMenu
//
//  Created by Renato High on 03/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class CardController: UIViewController{
    var card1: UIView?
    var card2: UIView?
    var card3: UIView?
   
    public func cardShow1() -> UIView{
        let cardView1 = UIView(frame: CGRect( x: screenWidth, y: screenHeight, width: 120, height: 150 ))
        cardView1.backgroundColor = UIColor.white
        cardView1.layer.shadowColor = UIColor.black.cgColor
        cardView1.layer.cornerRadius = 5
        cardView1.layer.shadowOpacity = 0.5
        cardView1.layer.shadowOffset = CGSize(width: 1, height: 1)
        cardView1.layer.shadowRadius = 2
        self.card1 = cardView1
        return cardView1
        //self.view.addSubview(cardView1)
        
        
    }
    
    public func cardView2() -> UIView{
        let pos1 = screenHeight + self.card1!.frame.size.height + 10
        let cardView2 = UIView(frame: CGRect( x: screenWidth, y: pos1, width: 120, height: 150 ))
        
        
        cardView2.backgroundColor = UIColor.white
        cardView2.layer.shadowColor = UIColor.black.cgColor
        cardView2.layer.cornerRadius = 5
        cardView2.layer.shadowOpacity = 0.5
        cardView2.layer.shadowOffset = CGSize(width: 1, height: 1)
        cardView2.layer.shadowRadius = 2
        self.card2 = cardView2
        
        return cardView2
    }
    
    public func cardView3() -> UIView{
        
        let pos2 = screenHeight + self.card1!.frame.size.height + self.card2!.frame.size.height + 20
        let cardView3 = UIView(frame: CGRect( x: screenWidth, y: pos2, width: 120, height: 150 ))
        
        cardView3.backgroundColor = UIColor.white
        cardView3.layer.shadowColor = UIColor.black.cgColor
        cardView3.layer.cornerRadius = 5
        cardView3.layer.shadowOpacity = 0.5
        cardView3.layer.shadowOffset = CGSize(width: 1, height: 1)
        cardView3.layer.shadowRadius = 2
        self.card3 = cardView3
        
        return cardView3
        
    }
    
    
    public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height * 0.15
    }
    
    // Screen width.
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width * 0.05
    }
    
}
