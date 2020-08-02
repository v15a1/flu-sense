//
//  ViewController.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/1/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var learnMoreButton: RightIconButton! {
        didSet{
            learnMoreButton.buttonLabel.text = L10n.learnMoreButtonLabel
            learnMoreButton.layer.cornerRadius = learnMoreButton.frame.height / 2
            learnMoreButton.backgroundColor = ColorName.white.color
            learnMoreButton.buttonLabel.textColor = ColorName.ceruleanBlue.color
            learnMoreButton.buttonImage.tintColor = ColorName.ceruleanBlue.color
            learnMoreButton.alpha = 0
            learnMoreButton.transform = CGAffineTransform(translationX: 0, y: 70)
        }
    }
    
    @IBOutlet weak var bubbleView2: UIView!{
        didSet{
            bubbleView2.layer.cornerRadius = bubbleView2.frame.width / 2
            bubbleView2.backgroundColor = ColorName.ceruleanBlue.color
        }
    }
    
    @IBOutlet weak var bubbleView1: UIView! {
        didSet{
            bubbleView1.layer.cornerRadius = bubbleView1.frame.width / 2
            bubbleView1.backgroundColor = ColorName.ceruleanBlue.color
        }
    }
    
    @IBOutlet weak var fluNameHeading: UILabel! {
        didSet{
            fluNameHeading.text = L10n.fluName
            fluNameHeading.textColor = ColorName.white.color
            fluNameHeading.alpha = 0
            fluNameHeading.transform = CGAffineTransform(translationX: 0, y: 50)
        }
    }
    
    @IBOutlet weak var fluDescription: UILabel!{
        didSet{
            fluDescription.text = L10n.fluDescription
            fluDescription.setLineHeight(lineHeight: 10)
            fluDescription.textAlignment = .center
            fluDescription.textColor = ColorName.white.color
            fluDescription.alpha = 0
            fluDescription.transform = CGAffineTransform(translationX: 0, y: 50)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorName.royalBlue.color
        startAnimations()
    }

    func startAnimations(){
        UIView.animate(withDuration: 1,delay: 0, options: .curveEaseInOut, animations: {
            self.fluNameHeading.alpha = 1
            self.fluNameHeading.transform = CGAffineTransform(translationX: 0, y: 0)
        })
        UIView.animate(withDuration: 1.5, delay: 0, options: .curveEaseInOut, animations:  {
            self.fluDescription.alpha = 1
            self.fluDescription.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: { (finished : Bool) in
            UIView.animate(withDuration: 1,delay: 0,options: .curveEaseOut, animations: {
                self.learnMoreButton.alpha = 1
                self.learnMoreButton.transform = CGAffineTransform(translationX: 0, y: 0)
            })
        })
        
    }

}

