//
//  DetailViewController.swift
//  Prarthna
//
//  Created by viNs on 9/13/18.
//  Copyright © 2018 Vinay Soni. All rights reserved.
//

import UIKit

class DetailViewController: UITableViewController {

    var allShlok : [String] = []
    var selected : Stotra? {
        didSet{
            loadItems()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func viewWillAppear(_ animated: Bool) {
        title = selected?.name
    }
    
    
    //MARK: TableView Data source methods
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShlokCell", for: indexPath)
        
        cell.textLabel?.text = allShlok[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allShlok.count
    }
    
    //MARK: Loading the shlokas
    
    func loadItems() {
        
        if let all = selected?.content {
            allShlok = all
        }
        
    }

}
