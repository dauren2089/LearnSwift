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
        
        navigationItem.leftBarButtonItem = editButtonItem()
    }
    
    @IBAction func unwindToList(sender: UIStoryboardSegue) {
        let srcViewCon = sender.sourceViewController as? ViewController
        let item = srcViewCon?.item
        if srcViewCon != nil && item?.name != "" {
            if let selectedIndexPath = tableView.indexPathForSelectedRow {
                // Update an existing meal.
                items[selectedIndexPath.row] = item!
                tableView.reloadRowsAtIndexPaths([selectedIndexPath], withRowAnimation: .None)
            } else {
                // Add a new item
                let newIndexPath = NSIndexPath(forRow: items.count, inSection: 0)
                items.append(item!)
                tableView.insertRowsAtIndexPaths([newIndexPath], withRowAnimation: .Bottom)
            }
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowDetail" {
            let detailVC = segue.destinationViewController as! ViewController
            
            // Get the cell that generated this segue
            if let selectedCell = sender as? ItemTableViewCell {
                let indexPath = tableView.indexPathForCell(selectedCell)
                let selectedItem = items[indexPath!.row]
                detailVC.item = selectedItem
            }
        } else if segue.identifier == "AddItem" {
            
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
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            items.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            
        }
    }
}
