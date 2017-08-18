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
        //Bundle.main.loadNibNamed("BaseTableViewCell", owner: self, options: nil)
        let view = Bundle.main.loadNibNamed("BaseTableViewCell", owner: self, options: nil)?.first as? BaseTableViewCell
        self.backgroundColor = .green
        if let view = view {
            //view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .gray
            self.contentView.addSubview(view)
            self.labelxd.text = "🐙"
            view.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
            view.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
            view.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
            view.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        }
        self.clipsToBounds = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
