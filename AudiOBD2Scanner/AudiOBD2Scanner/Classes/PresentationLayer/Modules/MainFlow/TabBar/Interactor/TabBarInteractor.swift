//
//  TabBarTabBarInteractor.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

class TabBarInteractor {

    weak var output: TabBarInteractorOutput!

}

// MARK: - TabBarInteractorInput

extension TabBarInteractor: TabBarInteractorInput {

    func prepareViewControllersFromTabBarModules(modules: TabBarModules) -> ViewControllers {
        
        return ViewControllers(main: modules.main,
                               settings: modules.settings.wrapToNavigationController())
    }
}
