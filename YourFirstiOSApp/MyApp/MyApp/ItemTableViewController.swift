//
//  ItemTableViewController.swift
//  MyApp
//
//  Created by Dong on 16/7/16.
//
//

import UIKit

class ItemTableViewController: UITableViewController {
    var items = [Item]()
    
    func loadSampleItems() {
        items += [Item(name: "Item1"), Item(name: "Item2"), Item(name: "Item3")]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadSampleItems()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reusedIdentifier", forIndexPath: indexPath)
        
        cell.textLabel?.text = items[indexPath.row].name
        
        return cell
    }
}
