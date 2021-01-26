//
//  CategoryListTableViewController.swift
//  ToDudeInClass
//
//  Created by user190425 on 1/21/21.
//

import UIKit
import CoreData
import SwipeCellKit

class CategoryListTableViewController: UITableViewController {
  

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "showItems", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let destination = segue.destination as? ItemListTableViewController,
       let index = tableView.indexPathForSelectedRow?.row{
      destination.category = categories[index]
    }
  }

 

}
