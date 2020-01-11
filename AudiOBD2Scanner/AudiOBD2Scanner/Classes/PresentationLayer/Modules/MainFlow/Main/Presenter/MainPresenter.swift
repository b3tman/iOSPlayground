//
//  MainMainPresenter.swift
//  AudiOBD2Scanner
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

    }

}

// MARK: - MainInteractorOutput

extension MainPresenter: MainInteractorOutput {

}