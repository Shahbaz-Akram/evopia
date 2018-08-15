//
//  ItemCollectionView.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/15/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit

class ItemCollectionView: UICollectionView {
    var cellItems = [cellData]()
    override func awakeFromNib() {
        registerNib()
        fetchData()
        self.delegate = self
        self.dataSource = self
    }
    func fetchData(){
        cellItems = [cellData.init(txt: "Decoration", img: #imageLiteral(resourceName: "Decoration"), isExpand: false,subCell:[]),
                     cellData.init(txt: "Furniture", img: #imageLiteral(resourceName: "Furnitue"), isExpand: false,subCell:[]),
                     cellData.init(txt: "Paint", img: #imageLiteral(resourceName: "Paint"), isExpand: false,subCell:[]),
                     cellData.init(txt: "Barber", img: #imageLiteral(resourceName: "Barber"), isExpand: false,subCell:[]),
                     cellData.init(txt: "Photography", img: #imageLiteral(resourceName: "Photography"), isExpand: false,subCell:[]),
                     cellData.init(txt: "Catering", img: #imageLiteral(resourceName: "Catering"), isExpand: false,subCell:[]),
                     cellData.init(txt: "Vanue", img: #imageLiteral(resourceName: "Vanue"), isExpand: false,subCell:[]),
                    cellData.init(txt: "Makup", img: #imageLiteral(resourceName: "Makeup"), isExpand: false,subCell:[]),
                    cellData.init(txt: "cards", img: #imageLiteral(resourceName: "Cards"), isExpand: false,subCell:[]),
                    cellData.init(txt: "Dress", img: #imageLiteral(resourceName: "Dress"), isExpand: false,subCell:[])
        ]
    }
    func registerNib(){
        let nib = UINib.init(nibName: "itemsCollectionViewCell", bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: "itemsCollectionViewCell")
    }
    

}
extension ItemCollectionView:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemsCollectionViewCell", for: indexPath) as! itemsCollectionViewCell
        cell.txtLbl.text = cellItems[indexPath.row].txt
        cell.imgView.image = cellItems[indexPath.row].img
        return cell
    }
}
extension ItemCollectionView:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellItems.count
    }
}
extension ItemCollectionView:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        var collectionViewSize = collectionView.frame.size
        collectionViewSize.width = collectionViewSize.width/5.0 //Display Three elements in a row.
        collectionViewSize.height = 100//collectionViewSize.height/2.0
        return collectionViewSize
    }
}

