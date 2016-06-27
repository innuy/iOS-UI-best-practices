//
//  TextConstants.swift
//  iOS UI best practices
//
//  Created by Innuy on 24/6/16.
//  Copyright © 2016 Innuy. All rights reserved.
//

import Foundation

class TextConstants{
    
    static let fontDo = "Avoid multiple fonts, unless you have a really good reason to change it.\nDo not use many font colors, even if you want to highlight different areas.\nBeware of font size, since too small sizes will break the user ability to read."
    static let fontDoNot = "Use only one or two fonts for your App, unless you have a really good reason to use more.\nHave one color for general texts and another for highlight. Too many colors will just devide the user attention. \nMake sure the size is readable. Size of at least 11px is reccomended."
    
    static let layoutDo = "Avoid borders for the application, since they just take up unnecesary space. \nDon't put buttons next to each other, specially if they are small (try touching the provided 'Do Not' buttons and you will see it may be difficult to touch the one you want). \nDo not leave important options in hard to see places like the bottom of the page."
    static let layoutDoNot = "Leave the screen without any borders, to ensure the content you actually want to show has the necessary space and that it can be organized neatly. \nLeave some space between buttons and make sure they are big enough for your users to click them correctly. \nHighlight important features in your App by bringing them to the top of the screen and using color."
    
    static let generalDo = "Make sure your App is as simple as posible. You should go directly to what the user wants to see and do not over-complicate screens. \nIf you want the user to rate your App, let them do it when they want or gently remind them at appropiate times.\nRemember that less is more."
    static let generalDoNot = "Do not lead with unnecesary intro screens that just makes the user take longer to use your App.\nDo not try to force the user to rate your App. Most often than not that will irritate him rather than send him to the App Store. And you do not want a angry user to rate your app. \nTry to make things as simple as possible."
    
    static let feedbackDo = "Use Activity Indicators or Progress Views when an action is expected to take a long time, to make sure the user knows that the application has not frozen.\nHide the button or visibly animate it after press, to give more feedback to the user and to make sure it is not clicked multiple times."
    static let feedbackDoNot = "Do not start an event that takes too long to make an impact of the screen without alerting the user. \nDo not leave a static screen for the user to see while the Application is processing on the background."
    
}
