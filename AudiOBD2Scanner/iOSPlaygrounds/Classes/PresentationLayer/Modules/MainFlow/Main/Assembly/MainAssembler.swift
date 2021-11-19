//
//  MainMainAssembler.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit
import Swinject

class MainModuleAssembler: Assembly {
    
    func assemble(container: Container) {

        container.register(MainInteractor.self) { ( _, presenter: MainPresenter) in

            let interactor = MainInteractor()
            interactor.output = presenter
            
            return interactor
        }
        
        container.register(MainRouter.self) { (_, viewController: MainViewController) in

            let router = MainRouter()
            router.view = viewController
            
            return router
        }
        
        container.register(MainModuleInput.self) { resolver in

            let presenter = MainPresenter()

            let viewController = resolver.resolve(MainViewController.self, argument: presenter)!

            presenter.view = viewController
            presenter.interactor = resolver.resolve(MainInteractor.self, argument: presenter)
            presenter.router = resolver.resolve(MainRouter.self, argument: viewController)
            
            return presenter
        }
        
        container.register(MainViewController.self) { (_, presenter: MainPresenter) in

            let viewController = R.storyboard.main.mainViewController()!
            viewController.output = presenter
            return viewController
        }

    }
    
}
