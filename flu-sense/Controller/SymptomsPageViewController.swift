//
//  SymptomsPageViewController.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/2/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit
import AnimatedCollectionViewLayout

class SymptomsPageViewController: UIViewController {
    
    let screenSize: CGRect = UIScreen.main.bounds
    
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
    
    @IBOutlet weak var symptomCollectionView: UICollectionView!{
        didSet{
           let layout = AnimatedCollectionViewLayout()
            layout.animator = LinearCardAttributesAnimator()
            layout.scrollDirection = .horizontal
            self.symptomCollectionView.collectionViewLayout = layout

            self.symptomCollectionView.showsHorizontalScrollIndicator = false
            self.symptomCollectionView.showsVerticalScrollIndicator = false
            self.symptomCollectionView.delegate = self
            self.symptomCollectionView.dataSource = self
            //registering Nib
            self.symptomCollectionView.registerNib(forCell: SymptomsCollectionViewCell.self)
        }
    }
    
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
        let cell : SymptomsCollectionViewCell = collectionView.dequeueReusableCell(SymptomsCollectionViewCell.self, for: indexPath)
    

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: screenSize.width * 0.8, height: collectionView.frame.height * 1.3)
    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return screenSize.width * 0.13
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {

        let cellInset = screenSize.width * 0.1
        return UIEdgeInsets(top: 0, left: cellInset, bottom: 0, right: cellInset )
    }
    
//    func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
//        //let cell = collectionView.cellForItem(at: indexPath)?.isHighlighted = true
//        return true
//    }

    
}

