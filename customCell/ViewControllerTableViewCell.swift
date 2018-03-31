//
//  ViewControllerTableViewCell.swift
//  customCell
//
//  Created by Jose Bustos H on 23.03.2015.
//  Copyright © 2015 Jose Bustos H. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
