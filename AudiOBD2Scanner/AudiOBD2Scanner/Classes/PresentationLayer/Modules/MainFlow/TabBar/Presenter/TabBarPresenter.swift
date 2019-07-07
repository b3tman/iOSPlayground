//
//  TabBarTabBarPresenter.swift
//  AudiOBD2Scanner
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

    }

}

// MARK: - TabBarInteractorOutput

extension TabBarPresenter: TabBarInteractorOutput {

}