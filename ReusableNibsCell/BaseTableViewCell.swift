//
//  BaseTableViewCell.swift
//  ReusableNibsCell
//
//  Created by Pedro Rothen on 8/18/17.
//  Copyright © 2017 asd. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    @IBOutlet weak var labelxd: UILabel!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.green
    }
    
    override func awakeAfter(using aDecoder: NSCoder) -> Any? {
        return self
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        Bundle.main.loadNibNamed("BaseTableViewCell", owner: self, options: nil)
        self.backgroundColor = .green
        self.addSubview(self.contentView)
        self.labelxd.text = "xdxd"
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
