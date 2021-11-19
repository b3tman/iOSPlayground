//
//  AlamofireTestAssembler.swift
//  iOSPlaygrounds
//
//  Created Maxim Brishten on 19.11.21.
//  Copyright © 2021 b3tman. All rights reserved.
//

import UIKit
import Swinject

final class AlamofireTestModuleAssembler: Assembly {
    
    func assemble(container: Container) {

        container.register(AlamofireTestInteractor.self) { ( _, presenter: AlamofireTestPresenter) in

            let interactor = AlamofireTestInteractor()
            interactor.output = presenter
            
            return interactor
        }
        
        container.register(AlamofireTestRouter.self) { (_, viewController: AlamofireTestViewController) in

            let router = AlamofireTestRouter()
            router.view = viewController
            
            return router
        }
        
        container.register(AlamofireTestModuleInput.self) { resolver in

            let presenter = AlamofireTestPresenter()

            let viewController = resolver.resolve(AlamofireTestViewController.self, argument: presenter)!

            presenter.view = viewController
            presenter.interactor = resolver.resolve(AlamofireTestInteractor.self, argument: presenter)
            presenter.router = resolver.resolve(AlamofireTestRouter.self, argument: viewController)
            
            return presenter
        }
        
        container.register(AlamofireTestViewController.self) { (_, presenter: AlamofireTestPresenter) in

            let viewController = R.storyboard.alamofireTest.alamofireTestViewController()!
            viewController.output = presenter
            return viewController
        }
    }
}
