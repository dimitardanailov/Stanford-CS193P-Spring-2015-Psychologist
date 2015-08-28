//
//  UIViewController.swift
//  Psychologist
//
//  Created by dimitar on 8/28/15.
//  Copyright (c) 2015 dimityr.danailov. All rights reserved.
//

import UIKit

var accumulatingLogVCLprefix = ""
var lastLogVCLPrefixRequest: NSDate?

// MARK: - Extensions add new functionality to an existing class, structure, enumeration, or protocol type. This includes the ability to extend types for which you do not have access to the original source code (known as retroactive modeling). Extensions are similar to categories in Objective-C. (Unlike Objective-C categories, Swift extensions do not have names.)
extension UIViewController {
    var logVCLprefix: String {
        if let lastRequestDate = lastLogVCLPrefixRequest {
            if lastRequestDate.timeIntervalSinceNow < -2 {
                accumulatingLogVCLprefix += "__"
            }
        }
        lastLogVCLPrefixRequest = NSDate(timeIntervalSinceNow: 0)
        
        return accumulatingLogVCLprefix
    }
}
