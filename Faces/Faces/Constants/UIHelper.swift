//
//  UIHelper.swift
//  Faces
//
//  Created by Jeffrey Lai on 2/25/20.
//  Copyright © 2020 Jeffrey Lai. All rights reserved.
//

import UIKit

enum UIHelper {
    
    static func collectionFlowLayoutSetup() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        layout.itemSize = CGSize(width: 140, height: 180)
        return layout
    }
    
}
