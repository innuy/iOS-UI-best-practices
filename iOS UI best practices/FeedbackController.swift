//
//  FeedbackController.swift
//  iOS UI best practices
//
//  Created by Innuy on 24/6/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

class FeedbackController: UIViewController {
    
    @IBOutlet weak var doNotView: UIView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var longActionDoButton: UIButton!
    
    var infoView: InformationView?
    
    override func viewDidLoad() {
        infoView = InformationController.initializeInfoView(forBackgroundView: doNotView, forController: self)
        self.view.addSubview(infoView!)
    }
    

    @IBAction func longActionDoNotPressed(sender: UIButton) {
        startLongAction(.DoNot)
    }
    
    @IBAction func doNotInfoPressed(sender: UIButton) {
        InformationController.showInformation(TextConstants.feedbackDoNot, position: .DoNot, informationView: infoView!)
    }
    
    
    @IBAction func doInfoPressed(sender: UIButton) {
        InformationController.showInformation(TextConstants.feedbackDo, position: .Do, informationView: infoView!)
    }
    
    
    @IBAction func longActionDoPressed(sender: UIButton) {
        indicator.startAnimating()
        sender.hidden = true
        startLongAction(.Do)
    }
    
    func startLongAction(position: InfoPosition){
        NSTimer.scheduledTimerWithTimeInterval(5, target: self, selector: #selector(FeedbackController.finishLongAction(_:)), userInfo: position.rawValue, repeats: false)
    }
    
    func finishLongAction(timer:NSTimer){
        if let posNumber: Int = timer.userInfo as? Int{
            if let position: InfoPosition = InfoPosition(rawValue: posNumber){
                var message = ""
                switch position {
                case .Do:
                    indicator.stopAnimating()
                    longActionDoButton.hidden = false
                    message = "Long action finished for DO section."
                    break
                case .DoNot:
                    message = "Long action finished for DO NOT section."
                    break
                }
                
                let alert = UIAlertController(title: "Action finished", message: message, preferredStyle: UIAlertControllerStyle.Alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
                self.presentViewController(alert, animated: true, completion: nil)
            }
        }
    }
}