//
//  TabBarTabBarConfigurator.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit
import Swinject

class TabBarModuleConfigurator {

    func configureModule () -> TabBarModuleInput {

        let moduleInput = AppDelegate.moduleAssembly.resolver.resolve(TabBarModuleInput.self)!
        
        return moduleInput
    }

}
