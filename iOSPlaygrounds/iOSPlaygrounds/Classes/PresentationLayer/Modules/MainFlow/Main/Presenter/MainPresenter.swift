//
//  MainMainPresenter.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class MainPresenter {

    weak var view: MainViewInput!
    weak var output: MainModuleOutput?

    var interactor: MainInteractorInput!
    var router: MainRouterInput!
}

// MARK: - MainModuleInput

extension MainPresenter: MainModuleInput {

  	var viewController: UIViewController {
    	return view.viewController
  	}
}

// MARK: - MainViewOutput

extension MainPresenter: MainViewOutput {

    func viewIsReady() {
        let models = interactor.getMainModels()
        view.setupInitialState(with: models)
    }
}

// MARK: - MainInteractorOutput

extension MainPresenter: MainInteractorOutput {

}
