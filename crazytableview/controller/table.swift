//
//  ViewController.swift
//  crazytableview
//
//  Created by mohamed haggag on 10/28/19.
//  Copyright © 2019 mohamed haggag. All rights reserved.
//

import UIKit

class table: UITableViewController {
    
    
    var imagesname : [String] = ["1","2","3","4","5","6"]
    var names : [String] = ["camer","cites","anmials","flowes","Stands","Urban" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.delegate = self
        tableView.delegate = self
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imagesname.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? tableCell {
            cell.configrecell(title:names[indexPath.row], pic: (imagesname[indexPath.row]))
            print("\(imagesname[indexPath.row])")
            print("\(names[indexPath.row])")
            return cell
            
        }
        return tableCell()
        
    }
    
    


}

