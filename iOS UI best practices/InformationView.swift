//
//  OverlayView.swift
//  iOS UI best practices
//
//  Created by Nacho Innuy on 24/6/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import UIKit

class InformationView: UIView{
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var textLabel: UITextView!
    
    @IBAction func closePressed(_ sender: UIButton) {
        self.isHidden = true
    }

    
}

