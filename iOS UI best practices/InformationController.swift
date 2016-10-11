//
//  InformationController.swift
//  iOS UI best practices
//
//  Created by Innuy on 24/6/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

enum InfoPosition: Int{
    case `do` = 1;
    case doNot = 2;
}

class InformationController{
    
    static func showInformation(_ message: String, position: InfoPosition, informationView: InformationView){
        informationView.textLabel.scrollRangeToVisible(NSRange(location:0, length:0))
        informationView.textLabel.text = message
        informationView.titleLabel.text = "Information"
        
        var currentFrame = informationView.frame

        switch position {
        case .do:
            if(currentFrame.minY < currentFrame.height){
                currentFrame = CGRect(x: currentFrame.minX, y: currentFrame.minY  + currentFrame.height, width: currentFrame.width, height: currentFrame.height)
            }
        case .doNot:
            if(currentFrame.minY > currentFrame.height){
                currentFrame = CGRect(x: currentFrame.minX , y: currentFrame.minY - currentFrame.height, width: currentFrame.width, height: currentFrame.height)
            }
        }
        
        informationView.frame = currentFrame
        informationView.isHidden = false
    }
    
    static func initializeInfoView(forBackgroundView backgroundView: UIView, forController controller: UIViewController) -> InformationView{
        let infoView = Bundle.main.loadNibNamed("InformationView",
                                                      owner: nil, options: nil)?[0] as! InformationView
        let frame = CGRect(x: backgroundView.frame.minX,y: backgroundView.frame.minY, width: controller.view.frame.width, height: controller.view.frame.height / 2 - ((controller.navigationController!.navigationBar.frame.height) / 2) - (UIApplication.shared.statusBarFrame.size.height / 2))
        infoView.frame = frame
        infoView.isHidden = true
        infoView.textLabel.scrollRangeToVisible(NSRange(location:0, length:0))
        return infoView
    }
}
