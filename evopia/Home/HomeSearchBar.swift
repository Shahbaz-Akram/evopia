//
//  HomeSearchBar.swift
//  evopia
//
//  Created by Shahbaz Akram on 8/15/18.
//  Copyright © 2018 Shahbaz Akram. All rights reserved.
//

import UIKit

extension UISearchBar {
    var textField: UITextField? {
        return subviews.first?.subviews.first(where: { $0.isKind(of: UITextField.self) }) as? UITextField
    }
}
class HomeSearchBar: UIView {

    @IBOutlet weak var searchBar: UISearchBar!
    override func awakeFromNib() {
        searchBar.textField?.backgroundColor = UIColor.white
    }

}
