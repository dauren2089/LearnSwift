//
//  Item.swift
//  MyApp
//
//  Created by Dong on 16/7/16.
//
//

import Foundation

class Item: NSObject, NSCoding {
    var name: String
    
    static let Dir = NSFileManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask).first!
    
    static let ArchiveURL = Dir.URLByAppendingPathComponent("items")
    
    init?(name: String) {
        self.name = name
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(name, forKey: "name")
    }
    
    // failable initializer may return nil.
    required convenience init?(coder aDecoder: NSCoder) {
        let name = aDecoder.decodeObjectForKey("name") as! String
        self.init(name: name)
    }
}