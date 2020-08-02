//
//  HomePageCustomView.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/2/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit

class HomePageCustomView: UIView {
    
    
    let screenSize = UIScreen.main.bounds
    
    var screenHeight : CGFloat {
        return screenSize.height
    }
    
    var screenWidth : CGFloat {
        return screenSize.width
    }
    
    override func draw(_ rect: CGRect) {
        let royalBlue = ColorName.royalBlue.color
        royalBlue.setFill()
        setBezierPath()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    func configure(){
        setBezierPath()
        addBackground(imageName: Asset.covid.name, contentMode: .scaleAspectFill)
    }
    
    func setBezierPath(){
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addLine(to: CGPoint(x: screenWidth , y: 0))
        path.addLine(to: CGPoint(x: screenWidth , y: screenHeight * 0.3))
        path.addCurve(to: CGPoint(x: 0, y: screenHeight * 0.4), controlPoint1: CGPoint(x:  screenWidth * 0.7, y: screenHeight * 0.1), controlPoint2: CGPoint(x:  screenWidth * 0.3, y: screenHeight * 0.5))
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        self.layer.mask = shapeLayer    }
    
}
