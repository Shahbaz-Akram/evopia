//
//  CatagoriesCollectionView.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/15/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit

class CatagoriesCollectionView: UICollectionView {

    override func awakeFromNib() {
        registerNib()
        self.delegate = self
        self.dataSource = self
    }
    
    func registerNib(){
        let nib = UINib.init(nibName: "CatagoriesCollectionViewCell", bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: "CatagoriesCollectionViewCell")
    }
}
extension CatagoriesCollectionView:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CatagoriesCollectionViewCell", for: indexPath) as! CatagoriesCollectionViewCell
        return cell
    }
}
extension CatagoriesCollectionView:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
}
extension CatagoriesCollectionView:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        var collectionViewSize = collectionView.frame.size
        collectionViewSize.width = collectionViewSize.width/1.5 //Display Three elements in a row.
        return collectionViewSize
    }
}
