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
    

    @IBAction func longActionDoNotPressed(_ sender: UIButton) {
        startLongAction(.doNot)
    }
    
    @IBAction func doNotInfoPressed(_ sender: UIButton) {
        InformationController.showInformation(TextConstants.feedbackDoNot, position: .doNot, informationView: infoView!)
    }
    
    
    @IBAction func doInfoPressed(_ sender: UIButton) {
        InformationController.showInformation(TextConstants.feedbackDo, position: .do, informationView: infoView!)
    }
    
    
    @IBAction func longActionDoPressed(_ sender: UIButton) {
        indicator.startAnimating()
        sender.isHidden = true
        startLongAction(.do)
    }
    
    func startLongAction(_ position: InfoPosition){
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(FeedbackController.finishLongAction(_:)), userInfo: position.rawValue, repeats: false)
    }
    
    func finishLongAction(_ timer:Timer){
        if let posNumber: Int = timer.userInfo as? Int{
            if let position: InfoPosition = InfoPosition(rawValue: posNumber){
                var message = ""
                switch position {
                case .do:
                    indicator.stopAnimating()
                    longActionDoButton.isHidden = false
                    message = "Long action finished for DO section."
                    break
                case .doNot:
                    message = "Long action finished for DO NOT section."
                    break
                }
                
                let alert = UIAlertController(title: "Action finished", message: message, preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}
