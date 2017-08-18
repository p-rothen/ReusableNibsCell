//
//  ChildTableViewCell.swift
//  ReusableNibsCell
//
//  Created by Pedro Rothen on 8/18/17.
//  Copyright © 2017 asd. All rights reserved.
//

import UIKit

class ChildTableViewCell: BaseTableViewCell {

    override func awakeFromNib() {
        //super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.yellow
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
