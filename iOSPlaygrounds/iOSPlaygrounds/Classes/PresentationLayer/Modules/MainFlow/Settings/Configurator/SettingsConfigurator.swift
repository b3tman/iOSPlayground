//
//  SettingsSettingsConfigurator.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit
import Swinject

class SettingsModuleConfigurator {

    func configureModule () -> SettingsModuleInput {

        let moduleInput = AppDelegate.moduleAssembly.resolver.resolve(SettingsModuleInput.self)!

        return moduleInput
    }

}
