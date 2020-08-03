//
//  UIStoryBoard+Extension.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/2/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit

extension UIStoryboard {
    enum Storyboard: String {
        case main
        case symptomsPage
        
        var filename: String {
            return rawValue.capitalized
        }
    }
    
    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.filename, bundle: bundle)
    }
}
