//
//  Collection+Extention.swift
//  CollectionSimple
//
//  Created by Vyacheslav Perkin on 18.12.2022.
//

import UIKit

extension UICollectionView {
    func register(name: String){
        let nib = UINib(nibName: name, bundle: Bundle.main)
        self.register(nib, forCellWithReuseIdentifier: name)
    }
    
    func dequeueReusableCell <T: UICollectionViewCell> (for classType: T.Type, for indexPath: IndexPath) -> T{
        return dequeueReusableCell(withReuseIdentifier: "\(classType)", for: indexPath) as! T
    }
}
