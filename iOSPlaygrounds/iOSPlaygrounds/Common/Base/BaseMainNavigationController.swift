//
//  BaseMainNavigationController.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 19.11.21.
//  Copyright © 2021 b3tman. All rights reserved.
//

import UIKit

class BaseMainNavigationController: UINavigationController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    // MARK: - Configuration

    private func config() {
        setupUI()
    }
    
    private func setupUI() {
        navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.titleTextAttributes = [.font: UIFont.boldSystemFont(ofSize: 22.0),
                                          .foregroundColor: UIColor.black]

        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
    }
}
