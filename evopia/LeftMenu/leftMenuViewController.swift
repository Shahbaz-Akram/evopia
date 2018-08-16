//
//  leftMenuViewController.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/14/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit

class leftMenuViewController: UIViewController {

    
    @IBOutlet weak var tableView: leftTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLeftVC()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func configureLeftVC(){
        tableView.pushToRequestVC = {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "RequestViewController") as! RequestViewController
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}

