//
//  tradmarkTableViewCell.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/14/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit

class tradmarkTableViewCell: UITableViewCell {

    @IBOutlet weak var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
        
    }
    func setup(){
        imgView.layer.cornerRadius = imgView.frame.size.height/2
        imgView.layer.borderWidth = 2
        imgView.layer.borderColor = UIColor.black.cgColor
        imgView.layer.masksToBounds = false
        imgView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
