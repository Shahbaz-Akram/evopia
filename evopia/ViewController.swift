//
//  ViewController.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/14/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit
import SJSwiftSideMenuController


class ViewController: UIViewController {

    @IBOutlet weak var collectionView: ItemCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //To enable Swipe gesture for toggle menu
        self.navigationController?.isNavigationBarHidden = true
        SJSwiftSideMenuController.enableDimbackground = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
   
}

