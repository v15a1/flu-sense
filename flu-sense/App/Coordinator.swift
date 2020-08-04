//
//  Coordinator.swift
//  flu-sense
//
//  Created by Visal Rajapakse on 8/4/20.
//  Copyright © 2020 Visal Rajapakse. All rights reserved.
//

import UIKit

final class Coordinator {
    let navigationController : UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
        self.navigationController.setNavigationBarHidden(true, animated: false)
    }
    
    func start(){
        let storyBoard = UIStoryboard(storyboard: .SymptomsPage)
        let mainViewController = storyBoard.instantiateViewController(withIdentifier: SymptomsPageViewController.storyboardIdentifier)
        navigationController.pushViewController(mainViewController, animated: true)
    }
}
