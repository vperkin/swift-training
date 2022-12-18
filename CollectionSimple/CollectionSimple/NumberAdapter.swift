//
//  NumberAdapter.swift
//  CollectionSimple
//
//  Created by Vyacheslav Perkin on 18.12.2022.
//

import UIKit

class NumberAdapter:NSObject {
    var numbers = (1...16).map{$0}
}

extension NumberAdapter:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(for: NumberCell.self, for: indexPath)
        let number = numbers[indexPath.item]
        cell.update(from: number)
        return cell
    }
}

extension NumberAdapter:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func collectionView(_ collectionView: UICollectionView, targetIndexPathForMoveOfItemFromOriginalIndexPath originalIndexPath: IndexPath, atCurrentIndexPath currentIndexPath: IndexPath, toProposedIndexPath proposedIndexPath: IndexPath) -> IndexPath {
        return proposedIndexPath
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        numbers.swapAt(sourceIndexPath.item, destinationIndexPath.item)
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("Drug")
    }
}
