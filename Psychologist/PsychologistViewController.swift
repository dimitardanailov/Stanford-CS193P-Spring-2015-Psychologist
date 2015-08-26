//
//  ViewController.swift
//  Psychologist
//
//  Created by dimitar on 8/26/15.
//  Copyright (c) 2015 dimityr.danailov. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController
{
    
    @IBAction func nothing(sender: UIButton) {
        performSegueWithIdentifier("nothing", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        if let navCon = destination as? UINavigationController {
            // visibleViewController - The view controller associated with the currently visible view in the navigation interface. (read-only)
            destination = navCon.visibleViewController
        }
        
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "sad": hvc.happiness = 0
                    case "happy": hvc.happiness = 100
                    case "nothing": hvc.happiness = 25
                    default: hvc.happiness = 50
                }
            }
        }
    }
}

