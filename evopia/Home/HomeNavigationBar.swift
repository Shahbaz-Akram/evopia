//
//  HomeNavigationBar.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/15/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit
import SJSwiftSideMenuController
class HomeNavigationBar: UIView {
    
    
    @IBAction func toggleLeftSideMenutapped(_ sender: AnyObject) {
        SJSwiftSideMenuController.toggleLeftSideMenu()
    }

}
