//
//  MovieContinueCell.swift
//  NetFlix
//
//  Created by Renato High on 08/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class MovieContinueCell: UICollectionViewCell {
    let titleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "label"
        return lbl
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        addSubview(titleLabel)
        constraint(pattern: "H:|[v0]|", views: titleLabel)
        constraint(pattern: "V:|[v0(40)]|", views: titleLabel)
        
        
    }
}
