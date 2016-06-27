//
//  LayoutViewController.swift
//  iOS UI best practices
//
//  Created by Innuy on 31/5/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

class LayoutViewController: UIViewController {
    
    @IBOutlet weak var doNotView: UIView!
    @IBOutlet weak var borderView: UIView!
    
    var infoView: InformationView?
    
    override func viewDidLoad() {
        borderView.layer.borderColor = UIColor.blueColor().CGColor
        borderView.layer.borderWidth = 20
        
        infoView = InformationController.initializeInfoView(forBackgroundView: doNotView, forController: self)
        self.view.addSubview(infoView!)
    }
    
    @IBAction func buttonOnePressed(sender: UIButton){
        alertButtonMessage("Button 1 pressed")
    }
    
    @IBAction func buttonTwoPressed(sender: UIButton){
        alertButtonMessage("Button 2 pressed")
    }
    
    @IBAction func buttonThreePressed(sender: UIButton){
        alertButtonMessage("Button 3 pressed")
    }
    
    @IBAction func buttonFourPressed(sender: UIButton){
        alertButtonMessage("Button 4 pressed")
    }
    
    @IBAction func buttonFivePressed(sender: UIButton){
        alertButtonMessage("Button 5 pressed")
    }
    
    private func alertButtonMessage(message: String){
        let alert = UIAlertController(title: "Press detected", message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func doNotInfoPressed(sender: UIButton) {
        InformationController.showInformation(TextConstants.layoutDoNot, position: .DoNot, informationView: infoView!)
    }
    
    
    @IBAction func doInfoPressed(sender: UIButton) {
        InformationController.showInformation(TextConstants.layoutDo, position: .Do, informationView: infoView!)
    }
}
