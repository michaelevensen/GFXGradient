//
//  UIColor+Random.swift
//  GFXGradient
//
//  Created by Michael Nino Evensen on 12/10/2016.
//  Copyright © 2016 Michael Nino Evensen. All rights reserved.
//

import UIKit

extension UIColor {
    
    func random() -> UIColor {
    
        let colors = [
            UIColor(red:0.91, green:0.07, blue:0.14, alpha:1.0),
            UIColor(red:0.94, green:0.23, blue:0.09, alpha:1.0),
            UIColor(red:0.97, green:0.39, blue:0.05, alpha:1.0),
            UIColor(red:1.00, green:0.55, blue:0.00, alpha:1.0),
            UIColor(red:1.00, green:0.73, blue:0.00, alpha:1.0),
            UIColor(red:0.99, green:0.88, blue:0.00, alpha:1.0),
            UIColor(red:0.73, green:0.85, blue:0.04, alpha:1.0),
            UIColor(red:0.49, green:0.83, blue:0.00, alpha:1.0),
            UIColor(red:0.09, green:0.78, blue:0.05, alpha:1.0),
            UIColor(red:0.00, green:0.81, blue:0.65, alpha:1.0),
            UIColor(red:0.00, green:0.72, blue:0.76, alpha:1.0),
            UIColor(red:0.00, green:0.74, blue:0.95, alpha:1.0),
            UIColor(red:0.00, green:0.47, blue:0.84, alpha:1.0),
            UIColor(red:0.00, green:0.27, blue:1.00, alpha:1.0),
            UIColor(red:0.31, green:0.30, blue:0.85, alpha:1.0),
            UIColor(red:0.44, green:0.38, blue:0.91, alpha:1.0),
            UIColor(red:0.45, green:0.30, blue:0.66, alpha:1.0),
            UIColor(red:0.53, green:0.09, blue:0.60, alpha:1.0),
            UIColor(red:0.71, green:0.00, blue:0.62, alpha:1.0),
            UIColor(red:0.89, green:0.00, blue:0.55, alpha:1.0),
            UIColor(red:0.92, green:0.00, blue:0.37, alpha:1.0),
            UIColor(red:1.00, green:0.26, blue:0.26, alpha:1.0),
            UIColor(red:0.67, green:0.45, blue:0.30, alpha:1.0),
            UIColor(red:0.41, green:0.47, blue:0.49, alpha:1.0),
            UIColor(red:0.22, green:0.22, blue:0.22, alpha:1.0)
        ]
        
        return colors[Int(arc4random_uniform(UInt32(colors.count)))]
    }
}
