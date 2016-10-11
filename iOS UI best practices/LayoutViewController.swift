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
        borderView.layer.borderColor = UIColor.blue.cgColor
        borderView.layer.borderWidth = 20
        
        infoView = InformationController.initializeInfoView(forBackgroundView: doNotView, forController: self)
        self.view.addSubview(infoView!)
    }
    
    @IBAction func buttonOnePressed(_ sender: UIButton){
        alertButtonMessage("Button 1 pressed")
    }
    
    @IBAction func buttonTwoPressed(_ sender: UIButton){
        alertButtonMessage("Button 2 pressed")
    }
    
    @IBAction func buttonThreePressed(_ sender: UIButton){
        alertButtonMessage("Button 3 pressed")
    }
    
    @IBAction func buttonFourPressed(_ sender: UIButton){
        alertButtonMessage("Button 4 pressed")
    }
    
    @IBAction func buttonFivePressed(_ sender: UIButton){
        alertButtonMessage("Button 5 pressed")
    }
    
    fileprivate func alertButtonMessage(_ message: String){
        let alert = UIAlertController(title: "Press detected", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func doNotInfoPressed(_ sender: UIButton) {
        InformationController.showInformation(TextConstants.layoutDoNot, position: .doNot, informationView: infoView!)
    }
    
    
    @IBAction func doInfoPressed(_ sender: UIButton) {
        InformationController.showInformation(TextConstants.layoutDo, position: .do, informationView: infoView!)
    }
}
