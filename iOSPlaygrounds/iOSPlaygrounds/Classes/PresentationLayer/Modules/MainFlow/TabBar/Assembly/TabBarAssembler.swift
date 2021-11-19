//
//  TabBarTabBarAssembler.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit
import Swinject

class TabBarModuleAssembler: Assembly {
    
    func assemble(container: Container) {

        container.register(TabBarInteractor.self) { ( _, presenter: TabBarPresenter) in

            let interactor = TabBarInteractor()
            interactor.output = presenter
            
            return interactor
        }
        
        container.register(TabBarRouter.self) { (_, viewController: TabBarViewController) in

            let router = TabBarRouter()
            router.view = viewController
            
            return router
        }
        
        container.register(TabBarModuleInput.self) { resolver in

            let presenter = TabBarPresenter()

            let viewController = resolver.resolve(TabBarViewController.self, argument: presenter)!

            presenter.view = viewController
            presenter.interactor = resolver.resolve(TabBarInteractor.self, argument: presenter)
            presenter.router = resolver.resolve(TabBarRouter.self, argument: viewController)
            
            return presenter
        }
        
        container.register(TabBarViewController.self) { (_, presenter: TabBarPresenter) in

            let viewController = R.storyboard.tabBar.tabBarViewController()!
            viewController.output = presenter
            return viewController
        }

    }
    
}
