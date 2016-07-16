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
    
    @IBAction func unwindToList(sender: UIStoryboardSegue) {
        let srcViewCon = sender.sourceViewController as? ViewController
        let item = srcViewCon?.item
        if srcViewCon != nil && item?.name != "" {
            // Add a new item
            let newIndexPath = NSIndexPath(forRow: items.count, inSection: 0)
            items.append(item!)
            tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
        }
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
