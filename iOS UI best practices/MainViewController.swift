//
//  ViewController.swift
//  iOS UI best practices
//
//  Created by Innuy on 30/5/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    var sections: [Section] = [Section.Fonts, Section.Layout, Section.General, Section.Feedback]
    
    override func viewWillAppear(animated: Bool) {
        var _ = NSBundle.mainBundle().loadNibNamed("InformationView",
                                                      owner: nil, options: nil)[0] as? InformationView
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        dispatch_async(dispatch_get_main_queue(),{
            self.performSegueWithIdentifier(self.sections[indexPath.row].destinationSegue, sender: nil)
        })
       
        
       tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MainViewTableCell", forIndexPath: indexPath) as! MainViewTableCell
        
        cell.titleLabel.text = sections[indexPath.row].labelText
        
        return cell
    }
    
}

