//
//  TableViewCellTextAndImage.swift
//  CustomCell
//
//  Created by Ali Al sharefi on 13/03/2020.
//  Copyright © 2020 Ali Al sharefi. All rights reserved.
//

import UIKit

class TableViewCellTextAndImage: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
