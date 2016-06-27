//
//  FontsViewController.swift
//  iOS UI best practices
//
//  Created by Innuy on 30/5/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

class FontsViewController: UIViewController{
    
    @IBOutlet var masterView: UIView!
    @IBOutlet weak var doNotView: UIView!
    @IBOutlet weak var doView: UIView!


    var infoView: InformationView?
    
    override func viewDidLoad() {
        infoView = InformationController.initializeInfoView(forBackgroundView: doNotView, forController: self)
        self.view.addSubview(infoView!)
    }
    
    @IBAction func doNotInfo(sender: UIButton) {
        InformationController.showInformation(TextConstants.fontDoNot, position: .DoNot, informationView: infoView!)
    }
    
    
    @IBAction func doInfo(sender: UIButton) {
        InformationController.showInformation(TextConstants.fontDo, position: .Do, informationView: infoView!)
    }
    
}
