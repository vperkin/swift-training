//
//  ViewController.swift
//  CollectionSimple
//
//  Created by Vyacheslav Perkin on 10.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let adapter = NumberAdapter()
    
    @IBOutlet var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(name:"NumberCell")
        collectionView.dataSource = adapter
        collectionView.delegate = adapter
    }


}


