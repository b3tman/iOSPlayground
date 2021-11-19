//
//  AlamofireTestConfigurator.swift
//  iOSPlaygrounds
//
//  Created Maxim Brishten on 19.11.21.
//  Copyright © 2021 b3tman. All rights reserved.
//

import UIKit
import Swinject

final class AlamofireTestModuleConfigurator {
    
    func configureModule () -> AlamofireTestModuleInput {
        
        let moduleInput = AppDelegate.moduleAssembly.resolver.resolve(AlamofireTestModuleInput.self)!
        
        return moduleInput
    }
}
