//
//  ViewController.swift
//  MyApp
//
//  Created by Dong on 16/7/16.
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameTextLabel: UILabel!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var item = Item?()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let name = nameTextField.text ?? ""
            item = Item(name: name)
        }
    }
    
//    @IBAction func setLabelText(sender: AnyObject) {
//        nameTextLabel.text = nameTextField.text
//    }
    
    @IBAction func cancel(sender: UIBarButtonItem) {
//        dismissViewControllerAnimated(true, completion: nil)
        navigationController?.popViewControllerAnimated(true)
    }
}

