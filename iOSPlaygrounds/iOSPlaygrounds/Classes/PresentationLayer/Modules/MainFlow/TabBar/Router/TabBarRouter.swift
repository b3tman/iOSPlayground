//
//  TabBarTabBarRouter.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class TabBarRouter: TabBarRouterInput {

	weak var view: UIViewController?
    
    func getModules() -> TabBarModules {
        
        let main = MainModuleConfigurator().configureModule().viewController
        let settings = SettingsModuleConfigurator().configureModule().viewController
        
        return (main: main,
                settings: settings)
    }
}
