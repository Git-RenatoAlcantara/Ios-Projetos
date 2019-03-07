//
//  CollectionMovieView.swift
//  NetFlix
//
//  Created by Renato High on 08/02/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit
class CollectionMovieView:NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewFlowLayout {
   
    let collectionId = "collectionId"
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        
       let cl = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        cl.backgroundColor = .green
        return cl
    }()
    
    override init() {
        super.init()
        collectionView.register(MovieContinueCell.self, forCellWithReuseIdentifier: collectionId)
    }
    
    

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 38
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: collectionId, for: indexPath) as! MovieContinueCell
        
        cell.backgroundColor = .yellow
        
        return cell
    }
    
    func collectionView( collection: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItem: IndexPath) -> CGSize {
        let width: CGFloat = collection.frame.width * 0.60
        return CGSize(width: width, height: width * (3 / 4))
    }
}
