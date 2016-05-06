//: Playground - noun: a place where people can play

import Foundation

// get the file path for the file "test.json" in the playground bundle
let filePath = NSBundle.mainBundle().pathForResource("google-maps", ofType: "json")

// get the contentData
let contentData = NSFileManager.defaultManager().contentsAtPath(filePath!)

// get the string (it is an Optional string right now)
let content = NSString(data: contentData!, encoding: NSUTF8StringEncoding) as? String

// print the file path
print("filepath: \(filePath!)")

// This is an optional String, so unwrap it
if let c = content {
    print("content: \n\(c)")
    
    // Now try parsing this file (or a file of your choice that you place in the Resources folder
    
    
}