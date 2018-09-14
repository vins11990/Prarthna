//
//  DetailViewController.swift
//  Prarthna
//
//  Created by viNs on 9/13/18.
//  Copyright © 2018 Vinay Soni. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    
    var selected : Stotra? {
        didSet{
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func viewWillAppear(_ animated: Bool) {
        title = selected?.name
    }
    

}
