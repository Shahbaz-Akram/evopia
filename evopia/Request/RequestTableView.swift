//
//  RequestTableView.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/16/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit

class RequestTableView: UITableView {
    override func awakeFromNib() {
        registerNib()
        self.delegate = self
        self.dataSource = self
    }
    func registerNib(){
        self.register(UINib(nibName: "RequestTableViewCell", bundle: nil), forCellReuseIdentifier: "RequestTableViewCell")
    }
}
extension RequestTableView:UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.dequeueReusableCell(withIdentifier: "RequestTableViewCell") as! RequestTableViewCell
        cell.backgroundColor = UIColor.groupTableViewBackground
        
        return cell
    }
}
extension RequestTableView:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
