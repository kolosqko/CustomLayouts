//
//  CustomCollectionViewLayout.swift
//  CustomLayouts
//
//  Created by Kolos on 4/23/18.
//  Copyright © 2018 Kolos. All rights reserved.
//

import UIKit


class CustomCollectionViewLayout: UICollectionViewFlowLayout {
    
   
    let numberOfColumns = 3
    var attribute: UICollectionViewLayoutAttributes?
    
    override func prepare() {
        
        guard let collectionView = collectionView else {
            return
        }
        sectionInset.left = 10
        minimumInteritemSpacing = 0
        let itemWidth = collectionView.frame.width/3
        itemSize.width = itemWidth
        
        attribute = UICollectionViewLayoutAttributes(forCellWith: IndexPath(item: 5, section: 0))
        attribute?.frame = CGRect(x: 34, y: 34, width: 54, height: 123)
    }
    
    override func shouldInvalidateLayout(forBoundsChange newBounds: CGRect) -> Bool {
        return false
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        
        var visibleLayoutAttributes = [UICollectionViewLayoutAttributes]()
        
        // Loop through the cache and look for items in the rect
        
        visibleLayoutAttributes.append(attribute!)
       
        return visibleLayoutAttributes
    }
    
//    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
//        return cache[indexPath.item]
//    }


}
