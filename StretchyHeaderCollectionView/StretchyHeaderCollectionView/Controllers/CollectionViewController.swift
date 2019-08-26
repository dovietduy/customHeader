//
//  StretchyHeaderCollectionView.swift
//  StretchyHeaderCollectionView
//
//  Created by DuyDo on 8/26/19.
//  Copyright © 2019 vti. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController{
    
    fileprivate let padding: CGFloat = 6

    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
        initComponent()
        initLayout()
    }
    
    fileprivate func initData() {
        
    }
    
    fileprivate func initComponent() {
        registerCLCell()
        registerCLHeader()
    }
    
    fileprivate func registerCLCell() {
        CustomCell.registerCellByClass(collectionView)
    }
    
    fileprivate func registerCLHeader() {
        HeaderView.registerHeaderByClass(collectionView)
    }
    
    fileprivate func initLayout() {
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
        }
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CustomCell.loadCell(collectionView, path: indexPath) as! CustomCell
        cell.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = HeaderView.loadHeader(collectionView, kind: kind, path: indexPath)
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 400)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 2 * padding, height: 200)
    }
}
