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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let image : UIImage = UIImage(named: "more") as UIImage? {
            SJSwiftSideMenuController .showLeftMenuNavigationBarButton(image: image)
        }
        //To enable Swipe gesture for toggle menu
        SJSwiftSideMenuController.enableDimbackground = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // left menu toggle
    @IBAction func toggleLeftSideMenutapped(_ sender: AnyObject) {
        SJSwiftSideMenuController.toggleLeftSideMenu()
    }
}

