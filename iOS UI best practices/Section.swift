//
//  Section.swift
//  iOS UI best practices
//
//  Created by Innuy on 31/5/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import Foundation

enum Section{
    case Fonts
    case Layout
    case General
    case Feedback
 
    var destinationSegue: String{
        switch self{
        case .Fonts:
            return "ToFontsScreen"
        case .Layout:
            return "ToLayoutScreen"
        case .General:
            return "ToGeneralDesignScreen"
        case .Feedback:
            return "ToFeedbackScreen"
        }
    }
    
    var labelText: String{
        switch self{
        case .Fonts:
            return "Fonts example"
        case .Layout:
            return "Layout example"
        case .General:
            return "General design example"
        case .Feedback:
            return "Feedback example"
        }
    }
}
