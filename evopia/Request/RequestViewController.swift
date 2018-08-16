//
//  RequestViewController.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/16/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit

class RequestViewController: UIViewController {

    @IBOutlet weak var tableView: RequestTableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.init(red: 2/255, green: 171/255, blue: 224/255, alpha: 1.0)
        navigationController?.navigationBar.titleTextAttributes = [kCTForegroundColorAttributeName: UIColor.white] as [NSAttributedStringKey : Any]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
