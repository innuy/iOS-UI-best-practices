//
//  InformationController.swift
//  iOS UI best practices
//
//  Created by Innuy on 24/6/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

enum InfoPosition: Int{
    case Do = 1;
    case DoNot = 2;
}

class InformationController{
    
    static func showInformation(message: String, position: InfoPosition, informationView: InformationView){
        informationView.textLabel.scrollRangeToVisible(NSRange(location:0, length:0))
        informationView.textLabel.text = message
        informationView.titleLabel.text = "Information"
        
        var currentFrame = informationView.frame

        switch position {
        case .Do:
            if(currentFrame.minY < currentFrame.height){
                currentFrame = CGRect(x: currentFrame.minX, y: currentFrame.minY  + currentFrame.height, width: currentFrame.width, height: currentFrame.height)
            }
        case .DoNot:
            if(currentFrame.minY > currentFrame.height){
                currentFrame = CGRect(x: currentFrame.minX , y: currentFrame.minY - currentFrame.height, width: currentFrame.width, height: currentFrame.height)
            }
        }
        
        informationView.frame = currentFrame
        informationView.hidden = false
    }
    
    static func initializeInfoView(forBackgroundView backgroundView: UIView, forController controller: UIViewController) -> InformationView{
        let infoView = NSBundle.mainBundle().loadNibNamed("InformationView",
                                                      owner: nil, options: nil)[0] as! InformationView
        let frame = CGRect(x: backgroundView.frame.minX,y: backgroundView.frame.minY, width: controller.view.frame.width, height: controller.view.frame.height / 2 - ((controller.navigationController!.navigationBar.frame.height) / 2) - (UIApplication.sharedApplication().statusBarFrame.size.height / 2))
        infoView.frame = frame
        infoView.hidden = true
        infoView.textLabel.scrollRangeToVisible(NSRange(location:0, length:0))
        return infoView
    }
}