//
//  HeaderView.swift
//  StretchyHeaderCollectionView
//
//  Created by DuyDo on 8/26/19.
//  Copyright © 2019 vti. All rights reserved.
//

import UIKit

class HeaderView: BaseCLReusable {

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
