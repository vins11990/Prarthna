//
//  ViewController.swift
//  Prarthna
//
//  Created by viNs on 8/27/18.
//  Copyright © 2018 Vinay Soni. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

    let allStotra = StotraData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Tableview data source methods

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allStotra.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TitleCell", for: indexPath)
        
        cell.textLabel?.text = allStotra.list[indexPath.row].name
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "gotoDetails", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailViewController
        
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.selected = allStotra.list[indexPath.row]
        }
    }

}

