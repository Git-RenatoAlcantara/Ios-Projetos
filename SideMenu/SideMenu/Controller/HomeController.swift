//
//  HomeController.swift
//  SideMenu
//
//  Created by Renato High on 02/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class HomeController: UIViewController{
    // MARK: - Properties
    
    var delegate: HomeControllerDelegate?
    var cardShow: CardController?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Image")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        configureNavigationBar()
        
        
    }
    
    // MARK: - Handlers
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = UIColor(white: 1, alpha: 0.5)
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "menu").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    // Screen height.
    private func cardView(){
        cardShow = CardController()
        let cardView1 = cardShow?.cardShow1()
        let cardView2 = cardShow?.cardView2()
        let cardView3 = cardShow?.cardView3()
        
        
        self.view.addSubview(cardView1!)
        self.view.addSubview(cardView2!)
        self.view.addSubview(cardView3!)
        
        
        
    }
    
    
}

