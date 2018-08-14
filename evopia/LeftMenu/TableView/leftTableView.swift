//
//  leftTableView.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/14/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit

struct cellData{
    var txt = String()
    var img = UIImage()
    var isExpand = Bool()
    var subCell = [subCellData]()
}
struct subCellData{
    var txt = String()
    var img = UIImage()
}

class leftTableView: UITableView {
   
    fileprivate var cellItems = [cellData]()
    fileprivate var subCellItems = [subCellData]()
    
    override func awakeFromNib() {
        registerNib()
        populateData()
        self.delegate = self
        self.dataSource = self
        self.tableFooterView = UIView()
        
    }
    func registerNib(){
        self.register(UINib(nibName: "tradmarkTableViewCell", bundle: nil), forCellReuseIdentifier: "tradmarkTableViewCell")
        self.register(UINib(nibName: "simpleTableViewCell", bundle: nil), forCellReuseIdentifier: "simpleTableViewCell")
        self.register(UINib(nibName: "subCellTableViewCell", bundle: nil), forCellReuseIdentifier: "subCellTableViewCell")
        
    }
    func populateData(){
        subCellItems = [subCellData.init(txt: "Contact Evopia", img: #imageLiteral(resourceName: "contact")),
                   subCellData.init(txt: "Legal", img: #imageLiteral(resourceName: "legal")),
                   subCellData.init(txt: "About Evopia", img: #imageLiteral(resourceName: "About"))
        ]
        cellItems = [cellData.init(txt: "Dashboard", img: #imageLiteral(resourceName: "dashboard"), isExpand: false,subCell:[]),
                     cellData.init(txt: "Post a Request", img: #imageLiteral(resourceName: "post-a-request"), isExpand: false,subCell:[]),
                     cellData.init(txt: "My Request", img: #imageLiteral(resourceName: "my-requests"), isExpand: false,subCell:[]),
                     cellData.init(txt: "Schedule/Booking", img: #imageLiteral(resourceName: "scheduled-bookings"), isExpand: false,subCell:[]),
                     cellData.init(txt: "My Favourits", img: #imageLiteral(resourceName: "my-favorites"), isExpand: false,subCell:[]),
                     cellData.init(txt: "More", img: #imageLiteral(resourceName: "more"), isExpand: false,subCell:subCellItems),
        ]
    }
}
extension leftTableView:UITableViewDelegate{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "tradmarkTableViewCell") as! tradmarkTableViewCell
            return cell
        }
        if indexPath.section == 6{
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleTableViewCell") as! simpleTableViewCell
            cell.imgView.image = cellItems[indexPath.section - 1].img
            cell.txtLbl.text = cellItems[indexPath.section - 1].txt
            cell.arrow.image = #imageLiteral(resourceName: "right_arrow")
            
            if (cellItems[indexPath.section - 1].isExpand == true){
                if indexPath.row == 0{
                    cell.arrow.image = #imageLiteral(resourceName: "down_arrow")
                    
                }
                else{
                    let cell = tableView.dequeueReusableCell(withIdentifier: "subCellTableViewCell") as! subCellTableViewCell
                    cell.imgView.image = subCellItems[indexPath.row - 1].img
                    cell.txtLbl.text = subCellItems[indexPath.row - 1].txt
                    return cell
                }
                
            }
            
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleTableViewCell") as! simpleTableViewCell
            cell.imgView.image = cellItems[indexPath.section - 1].img
            cell.txtLbl.text = cellItems[indexPath.section - 1].txt
            cell.arrow.image = nil
            return cell
        }
    }
}
extension leftTableView :UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 6{
            if (cellItems[section - 1].isExpand == true){
                return (cellItems[section - 1].subCell.count + 1)
            }
        }
        return 1
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return cellItems.count + 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0{
            return 200
        }
        return 80
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 6{
            if cellItems[indexPath.section - 1].isExpand == true{
                cellItems[indexPath.section - 1].isExpand =  false
            }
            else{
                cellItems[indexPath.section - 1].isExpand =  true
            }
            self.reloadSections(IndexSet([indexPath.section]), with: UITableViewRowAnimation.none)
            
        }
    }
}
