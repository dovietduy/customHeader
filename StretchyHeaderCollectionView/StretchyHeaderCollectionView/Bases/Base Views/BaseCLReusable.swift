//
//  BaseCLReusable.swift
//  StretchyHeaderCollectionView
//
//  Created by DuyDo on 8/26/19.
//  Copyright © 2019 vti. All rights reserved.
//

import UIKit

class BaseCLReusable: UICollectionReusableView {
    
    static func identifier() -> String {
        return self.self.description()
    }
    
    static func registerHeaderByClass(_ collectionView: UICollectionView){
        return collectionView.register(self.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: self.identifier())
    }
    
    static func registerHeaderByNib(_ collectionView: UICollectionView) {
        let nib = UINib(nibName: self.identifier(), bundle: nil)
        return collectionView.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: self.identifier())
    }
    
    static func loadHeader(_ collectionView: UICollectionView, kind: String, path: IndexPath) -> BaseCLReusable {
        return collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: self.identifier(), for: path) as! BaseCLReusable 
    }
}
