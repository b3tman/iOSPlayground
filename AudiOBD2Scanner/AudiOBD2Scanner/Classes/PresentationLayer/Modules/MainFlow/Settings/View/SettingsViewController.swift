//
//  SettingsSettingsViewController.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var output: SettingsViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

// MARK: - SettingsViewInput

extension SettingsViewController: SettingsViewInput {
  
	func setupInitialState() {
    
  	}
  
}
