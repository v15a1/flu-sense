//
//  CustomNavigationBar.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/3/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit

class CustomNavigationBar: UIView {

    
    @IBOutlet weak var navigationCircleView: UIView!{
        didSet{
            navigationCircleView.layer.cornerRadius = navigationCircleView.frame.width / 2
            navigationCircleView.backgroundColor = ColorName.ceruleanBlue.color
        }
    }
    
    @IBOutlet weak var navbarHeading: UILabel! {
        didSet{
            navbarHeading.text = L10n.fluName
            navbarHeading.textColor = ColorName.ceruleanBlue.color
        }
    }
    @IBOutlet weak var leftNavigationButton: UIButton!
    @IBOutlet weak var rightNavigationButton: UIButton!
    @IBOutlet var contentView: UIView!{
        didSet{
        }
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
        fromNib()
        
    }
    
    override func draw(_ rect: CGRect) {
        ColorName.ceruleanBlue.color.set()
        setBezierPath()
    }
    
    func setBezierPath(){
        let path = UIBezierPath()
        let center = CGPoint(x: -10, y: 0)
        let radius = frame.height
        path.move(to: CGPoint(x: 0.0, y: 0.0))
        path.addArc(withCenter: center, radius: radius, startAngle: 0, endAngle: .pi * 2, clockwise: true)
        path.close()
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
    }

}
