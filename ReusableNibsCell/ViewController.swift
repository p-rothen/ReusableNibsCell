//
//  ViewController.swift
//  ReusableNibsCell
//
//  Created by Pedro Rothen on 8/18/17.
//  Copyright © 2017 asd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let id = "cd"
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.register(BaseTableViewCell.self, forCellReuseIdentifier: self.id)
        let nib = UINib(nibName: "BaseTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: self.id)
    }
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.id, for: indexPath) as? ChildTableViewCell
        return cell ?? UITableViewCell()
    }
}
