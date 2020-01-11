//
//  TabBarTabBarViewController.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    var output: TabBarViewOutput!
    var tabbarControllers: ViewControllers!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        output.viewIsReady()
    }
}

// MARK: - TabBarViewInput

extension TabBarViewController: TabBarViewInput {
  
	func setupInitialState(viewControllers: ViewControllers, selectedIndex: Int) {
        
        self.tabbarControllers = viewControllers
        viewControllers.main.title = "Main"
        viewControllers.settings.title = "Settings"
    
        self.viewControllers = [viewControllers.main,
                                viewControllers.settings]
        
        
        
        self.selectedIndex = selectedIndex
  	}
  
}
