//: Playground - noun: a place where people can play

import Foundation

// NOTE: "This JSON dataset identifies public locations and cooling centres in the City of
//        Toronto that offer an air-conditioned space for temporary relief on heat alert
//        and extreme heat alert days."
//
// SOURCE: https://api.tfl.gov.uk/Line/Route?app_id=&app_key=
//
// get the file path for the file "ac-in-toronto" in the playground bundle
let filePath = NSBundle.mainBundle().pathForResource("currency", ofType: "json")

// get the contentData
let contentData = NSFileManager.defaultManager().contentsAtPath(filePath!)

//// get the string (it is an Optional string right now)
//let content = NSString(data: contentData!, encoding: NSUTF8StringEncoding) as? String

// print the file path
print("filepath: \(filePath!)")

// This is an optional String, so unwrap it
if let c = contentData {
    print("content: \n\(c)")
    do {
        
        // try to parse entire json file int a single Anyobject
        let data = try NSJSONSerialization.JSONObjectWithData(c, options: NSJSONReadingOptions.AllowFragments)
        
        // cast  Anyopbject into a dictionary with a key of type string and a value that is Any object
        if let currencyData = data as? [String : AnyObject]{
            // if this worked, we have dictionary
            print("====")
            print("the value for the 'time' key is: ")
            print(currencyData["bpi"])
            print("====")
            
            // now sort into bpi part of json data and parse further
            if let exchangeRateDetails = currencyData["bpi"] as? [String :AnyObject] {
                print("==== US dollars data ====")
                print(exchangeRateDetails["USD"])
                print("==== Canadian dollars data ====")
                print(exchangeRateDetails["CAD"])
                
                if let americanCurrencyDetails = exchangeRateDetails as? [String : AnyObject]{
                    
                    print("****")
                    print("stuff")
                    
                    // move data into individual variables
                    gaurd let code : String = americanCurrencyDetails["code"] as? String,
                    let rate : Double = americanCurrencyDetails["rate"] as? Double {
                    } else {
                        print("no worky")
                    }
                    
                } else {
                    print("error at parsing of JSON at american currency details")
                }
            } else {
                print ("error: could not cast exchange rate details into dictionary")
            }
            
            
        } else {
            print("error could not cast json into a dictionary of key type string and value type Anyobject")
        }
        
        // if an error hapens print failed to load
    } catch let error as NSError {
     print("Failed to load JSON.")
        print("\(error.localizedDescription)")
    }
    // Now try parsing this file (or a file of your choice that you place in the Resources folder
    
    
}
