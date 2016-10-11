//
//  Section.swift
//  iOS UI best practices
//
//  Created by Innuy on 31/5/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import Foundation

enum Section{
    case fonts
    case layout
    case general
    case feedback
 
    var destinationSegue: String{
        switch self{
        case .fonts:
            return "ToFontsScreen"
        case .layout:
            return "ToLayoutScreen"
        case .general:
            return "ToGeneralDesignScreen"
        case .feedback:
            return "ToFeedbackScreen"
        }
    }
    
    var labelText: String{
        switch self{
        case .fonts:
            return "Fonts example"
        case .layout:
            return "Layout example"
        case .general:
            return "General design example"
        case .feedback:
            return "Feedback example"
        }
    }
}
