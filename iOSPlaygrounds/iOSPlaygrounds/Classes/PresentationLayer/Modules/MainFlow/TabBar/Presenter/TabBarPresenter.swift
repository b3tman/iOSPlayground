//
//  TabBarTabBarPresenter.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class TabBarPresenter {

    weak var view: TabBarViewInput!
    weak var output: TabBarModuleOutput?

    var interactor: TabBarInteractorInput!
    var router: TabBarRouterInput!

    var selectedTab: SelectedTab = .main
}

// MARK: - TabBarModuleInput

extension TabBarPresenter: TabBarModuleInput {

  	var viewController: UIViewController {
    	return view.viewController
  	}
}

// MARK: - TabBarViewOutput

extension TabBarPresenter: TabBarViewOutput {

    func viewIsReady() {

        let modules = router.getModules()
        let viewControllers = interactor.prepareViewControllersFromTabBarModules(modules: modules)

        view.setupInitialState(viewControllers: viewControllers, selectedIndex: selectedTab.rawValue)
    }
}

// MARK: - TabBarInteractorOutput

extension TabBarPresenter: TabBarInteractorOutput {

}
