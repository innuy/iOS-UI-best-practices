//
//  GeneralDesignController.swift
//  iOS UI best practices
//
//  Created by Innuy on 24/6/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

class GeneralDesignController: UIViewController {
    
    @IBOutlet weak var doNotView: UIView!
    @IBOutlet weak var introView: UIView!
    
    var infoView: InformationView?
    
    override func viewDidLoad() {
        
        infoView = InformationController.initializeInfoView(forBackgroundView: doNotView, forController: self)
        self.view.addSubview(infoView!)
    }
    
    @IBAction func continueButtonPressed(sender: UIButton) {
        introView.hidden = true
    }
    
    @IBAction func doNotInfoPressed(sender: UIButton) {
        InformationController.showInformation(TextConstants.generalDoNot, position: .DoNot, informationView: infoView!)
    }
    
    
    @IBAction func doInfoPressed(sender: UIButton) {
        InformationController.showInformation(TextConstants.generalDo, position: .Do, informationView: infoView!)
    }
}
