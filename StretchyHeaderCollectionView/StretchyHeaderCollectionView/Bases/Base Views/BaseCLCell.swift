//
//  BaseCLCell.swift
//  StretchyHeaderCollectionView
//
//  Created by DuyDo on 8/26/19.
//  Copyright © 2019 vti. All rights reserved.
//

import UIKit

class BaseCLCell: UICollectionViewCell {
    
    static func identifier() -> String {
        return self.self.description()
    }
    
    static func size() -> CGSize{
        return CGSize.zero // height and width = 0
    }
    
    static func registerCellByClass(_ collectionView: UICollectionView){
        return collectionView.register(self.self, forCellWithReuseIdentifier: self.identifier())
    }
    
    static func registerCellByNib(_ collectionView: UICollectionView) {
        let nib = UINib(nibName: self.identifier(), bundle: nil)
        return collectionView.register(nib, forCellWithReuseIdentifier: self.identifier())
    }
    
    static func loadCell(_ collectionView: UICollectionView, path: IndexPath) -> BaseCLCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: self.identifier(), for: path) as! BaseCLCell
    }
}
