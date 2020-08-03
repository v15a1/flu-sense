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
        }
    }
    @IBOutlet weak var leftNavigationButton: UIButton!
    @IBOutlet weak var rightNavigationButton: UIButton!
    @IBOutlet weak var navbarHeading: UILabel! {
        didSet{
            navbarHeading.text = L10n.fluName
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

}
