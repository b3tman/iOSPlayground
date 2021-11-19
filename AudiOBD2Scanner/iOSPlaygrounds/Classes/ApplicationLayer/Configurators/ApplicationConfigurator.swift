//
//  ApplicationConfigurator.swift
//  iOSPlaygrounds
//
//  Created by Макс on 7/7/19.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class ApplicationConfigurator: ConfiguratorProtocol {
    
    func configure() {
        
        var rootView: UIViewController!
        
        let viewController = TabBarModuleConfigurator().configureModule().viewController
        rootView = viewController
        
        AppDelegate.currentWindow.rootViewController = rootView
        
    }
}
