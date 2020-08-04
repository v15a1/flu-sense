//
//  SymptomsPageViewController.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/2/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit

class SymptomsPageViewController: UIViewController {

    @IBOutlet weak var pageHeading: UILabel! {
        didSet{
            self.pageHeading.text = L10n.symptomsPageHeading
        }
    }
    
    @IBOutlet weak var symptomCount: UILabel! {
        didSet{
            self.symptomCount.text = "1/6"
        }
    }
    
    @IBOutlet weak var symptomCollectionView: UICollectionView!
    
    @IBOutlet weak var customNavbarHeightConstraint: NSLayoutConstraint!{
        didSet{
            if UIDevice().userInterfaceIdiom == .phone{
                self.customNavbarHeightConstraint.constant = UIDevice.getHeaderImageHeightForCurrentDevice(UIDevice())()
            }
        }
    }
    
    @IBOutlet weak var customNavBar: CustomNavigationBar!{
        didSet{
            self.customNavBar.rightNavigationButton.setImage(Asset.bell.image, for: .normal)
            self.customNavBar.leftNavigationButton.setImage(Asset.menu.image, for: .normal)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}


extension SymptomsPageViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}
