//
//  ViewController.swift
//  iOS UI best practices
//
//  Created by Innuy on 30/5/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    var sections: [Section] = [Section.fonts, Section.layout, Section.general, Section.feedback]
    
    override func viewWillAppear(_ animated: Bool) {
        var _ = Bundle.main.loadNibNamed("InformationView",
                                                      owner: nil, options: nil)?[0] as? InformationView
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async(execute: {
            self.performSegue(withIdentifier: self.sections[(indexPath as NSIndexPath).row].destinationSegue, sender: nil)
        })
       
        
       tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainViewTableCell", for: indexPath) as! MainViewTableCell
        
        cell.titleLabel.text = sections[(indexPath as NSIndexPath).row].labelText
        
        return cell
    }
    
}

