//
//  UICollectionReusableView+Ext.swift
//  MovieList
//
//  Created by Enes Sancar on 13.11.2023.
//

import UIKit.UICollectionView

extension UICollectionReusableView {
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
