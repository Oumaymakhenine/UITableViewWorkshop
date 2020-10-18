//
//  ViewController.swift
//  WorkshopIOSTV
//
//  Created by Khaled Guedria on 10/18/20.
//  Copyright © 2020 Khaled Guedria. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var data = ["El Camino","Extraction","Project Power","Six Underground","Spenser Confidential","The Irishman"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return data.count //6 elements
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "mCell")
        let contentView = cell?.contentView
        
        let label = contentView?.viewWithTag(1) as! UILabel
        let imageView = contentView?.viewWithTag(2) as! UIImageView
        
        label.text = data[indexPath.row]
        imageView.image = UIImage(named: data[indexPath.row])
        
        
        
        return cell!
        
    }
    
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

