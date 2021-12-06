//
//  TableViewCell.swift
//  ProjetMobile
//
//  Created by Dylan Cherrier on 23/11/2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        label.text = "test test"
    }

}
