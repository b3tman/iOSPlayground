//
//  MainMainConfigurator.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit
import Swinject

class MainModuleConfigurator {

    func configureModule () -> MainModuleInput {

        let moduleInput = AppDelegate.moduleAssembly.resolver.resolve(MainModuleInput.self)!

        return moduleInput
    }

}
