//
//  SettingsSettingsAssembler.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit
import Swinject

class SettingsModuleAssembler: Assembly {
    
    func assemble(container: Container) {

        container.register(SettingsInteractor.self) { ( _, presenter: SettingsPresenter) in

            let interactor = SettingsInteractor()
            interactor.output = presenter
            
            return interactor
        }
        
        container.register(SettingsRouter.self) { (_, viewController: SettingsViewController) in

            let router = SettingsRouter()
            router.view = viewController
            
            return router
        }
        
        container.register(SettingsModuleInput.self) { resolver in

            let presenter = SettingsPresenter()

            let viewController = resolver.resolve(SettingsViewController.self, argument: presenter)!

            presenter.view = viewController
            presenter.interactor = resolver.resolve(SettingsInteractor.self, argument: presenter)
            presenter.router = resolver.resolve(SettingsRouter.self, argument: viewController)
            
            return presenter
        }
        
        container.register(SettingsViewController.self) { (_, presenter: SettingsPresenter) in

            let viewController = R.storyboard.settings.settingsViewController()!
            viewController.output = presenter
            return viewController
        }
    }
}
