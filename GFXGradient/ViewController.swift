//
//  ViewController.swift
//  GFXGradient
//
//  Created by Michael Nino Evensen on 12/10/2016.
//  Copyright © 2016 Michael Nino Evensen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    
    // gradient
    var gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // set delegate
        self.scrollView.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        // set random colors gradient layer
        self.gradientLayer.colors = self.randomColors()
        
        // set frame
        self.gradientLayer.frame = self.contentView.frame
        
        // Tilted gradient
        self.gradientLayer.startPoint = CGPoint(x: 0.3, y: 0.15)
        self.gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        
        /*
         *   [0,0] is the bottom-left
         * corner of the layer, [1,1] is the top-right corner.
         */
        self.gradientLayer.locations = [0.0, 1.0]
        
        // add and send to back
        self.contentView.layer.addSublayer(self.gradientLayer)
    }
    
    func randomColors() -> [CGColor] {
        return [UIColor().random().cgColor, UIColor().random().cgColor]
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
       
        // get location
        let location = scrollView.contentOffset.y / (self.contentView.frame.height / 2)

        // round to two decimal numbers
        // .toNearestOrAwayFromZero
        let roundedValue = (location * 100).rounded(.towardZero) / 100
        
        // allowed value range
        let minValue: CGFloat = 0.2
        let maxValue: CGFloat = 1.0
        if case (minValue...maxValue) = roundedValue {
        
            // animate endpoint
            self.gradientLayer.endPoint.x = roundedValue
            
            // animate color locations
            //self.gradientLayer.locations = [0.0, NSNumber(value: Double(roundedValue))]
            //self.gradientLayer.setNeedsDisplay()
        }
    }
    
    @IBAction func didTap(_ sender: AnyObject) {
        
        UIView.animate(withDuration: 10.0) {
            self.gradientLayer.colors = self.randomColors()
        }
    }
}
