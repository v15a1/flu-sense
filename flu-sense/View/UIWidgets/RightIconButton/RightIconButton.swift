//
//  RightIconButton.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/2/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit

class RightIconButton: UIView {

    @IBOutlet weak var rightImageButton: UIButton!
    @IBOutlet weak var buttonImage: UIImageView!
    @IBOutlet weak var buttonLabel: UILabel!
    
    
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
    @IBAction func rightImageButtonPressed(_ sender: Any) {
        //unused
    }
    
}
