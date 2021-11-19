//
//  TabBarTabBarInteractor.swift
//  iOSPlaygrounds
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
        let navigationController = BaseMainNavigationController()
        return ViewControllers(main: modules.main.wrapToNavigationController(navigationController: navigationController),
                               settings: modules.settings.wrapToNavigationController())
    }
}
