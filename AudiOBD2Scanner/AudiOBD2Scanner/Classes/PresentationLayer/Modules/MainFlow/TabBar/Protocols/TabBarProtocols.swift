//
//  TabBarTabBarProtocols.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

enum SelectedTab: Int {
    case main, settings
}

typealias ViewControllers = (main: UIViewController,
                         settings: UIViewController)

typealias TabBarModules = (main: UIViewController,
                       settings: UIViewController)

protocol TabBarViewInput: class, Presentable {

    func setupInitialState(viewControllers: ViewControllers, selectedIndex: Int)
}

protocol TabBarViewOutput {

    func viewIsReady()
}

protocol TabBarModuleInput: class {

	var viewController: UIViewController { get }
	var output: TabBarModuleOutput? { get set }
}

protocol TabBarModuleOutput: class {

}

protocol TabBarInteractorInput {
    
    func prepareViewControllersFromTabBarModules(modules: TabBarModules) -> ViewControllers
}

protocol TabBarInteractorOutput: class {

}

protocol TabBarRouterInput {

    func getModules() -> TabBarModules
}
