//
//  TabBarTabBarViewController.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    var output: TabBarViewOutput!
    var tabbarControllers: ViewControllers!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        output.viewIsReady()
        updateSelection()
    }
    
    //MARK: - Private
    func updateSelection() {
        let normalFont = UIFont.systemFont(ofSize: 20, weight: .medium)
        let selectedFont = UIFont.systemFont(ofSize: 20, weight: .bold)
        viewControllers?.forEach {
            let selected = $0 == self.selectedViewController
            $0.tabBarItem.setTitleTextAttributes([.font: selected ? selectedFont : normalFont], for: .normal)
        }
    }
}

// MARK: - UITabBarControllerDelegate

extension TabBarViewController: UITabBarControllerDelegate {
  
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        updateSelection()
    }
}

// MARK: - TabBarViewInput

extension TabBarViewController: TabBarViewInput {
  
	func setupInitialState(viewControllers: ViewControllers, selectedIndex: Int) {
        
        self.tabbarControllers = viewControllers
        viewControllers.main.title = R.string.localizable.mainTabBarItem()
        viewControllers.settings.title = R.string.localizable.settingsTabBarItem()
    
        self.viewControllers = [viewControllers.main,
                                viewControllers.settings]
        
        
        
        self.selectedIndex = selectedIndex
  	}
  
}
