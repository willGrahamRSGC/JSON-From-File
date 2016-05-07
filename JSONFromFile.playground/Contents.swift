//: Playground - noun: a place where people can play

import Foundation

// NOTE: "This JSON dataset identifies public locations and cooling centres in the City of
//        Toronto that offer an air-conditioned space for temporary relief on heat alert
//        and extreme heat alert days."
//
// SOURCE: http://www1.toronto.ca/wps/portal/contentonly?vgnextoid=e7356d1900531510VgnVCM10000071d60f89RCRD&vgnextchannel=1a66e03bb8d1e310VgnVCM10000071d60f89RCRD
//
// get the file path for the file "ac-in-toronto" in the playground bundle
let filePath = NSBundle.mainBundle().pathForResource("ac-in-toronto", ofType: "json")

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