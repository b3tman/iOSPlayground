//
//  TabBarTabBarViewController.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    var output: TabBarViewOutput!
    
    @IBOutlet weak var tabBar: UITabBar!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

// MARK: - TabBarViewInput

extension TabBarViewController: TabBarViewInput {
  
	func setupInitialState() {
    
  	}
  
}
