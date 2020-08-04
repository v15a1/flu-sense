//
//  UICollectionView+Extension.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/4/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    // MARK: - Initialiser
    
    convenience init(layout: UICollectionViewLayout) {
        self.init(frame: .zero, collectionViewLayout: layout)
    }
    
    // MARK: - Register Cells
    
    func registerClass<T: UICollectionViewCell>(forCell type: T.Type) {
        let className = String(describing: type)
        register(type, forCellWithReuseIdentifier: className)
    }
    
    func registerNib<T: UICollectionViewCell>(forCell type: T.Type) {
        let className = String(describing: type)
        let nib = UINib(nibName: className, bundle: Bundle(for: type))
        register(nib, forCellWithReuseIdentifier: className)
    }
    
    func registerNib<T: UICollectionReusableView>(forHeader type: T.Type) {
        let className = String(describing: type)
        let nib = UINib(nibName: className, bundle: nil)
        register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: className)
    }
    
    // MARK: - Dequeue Cells
    
    func dequeueReusableCell<T: UICollectionViewCell>(_ type: T.Type, for indexPath: IndexPath) -> T {
        let className = String(describing: type)
        let cell = dequeueReusableCell(withReuseIdentifier: className, for: indexPath) as? T
        return cell!
    }
    
    func dequeueReusableHeader<T: UICollectionReusableView>(_ type: T.Type, for indexPath: IndexPath) -> T {
        let className = String(describing: type)
        let kind = UICollectionView.elementKindSectionHeader
        let view = dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: className, for: indexPath) as? T
        return view!
    }
}

