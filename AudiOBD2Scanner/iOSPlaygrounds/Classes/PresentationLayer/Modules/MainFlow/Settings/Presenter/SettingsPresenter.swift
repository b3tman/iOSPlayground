//
//  SettingsSettingsPresenter.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class SettingsPresenter {

    weak var view: SettingsViewInput!
    weak var output: SettingsModuleOutput?
    
    var interactor: SettingsInteractorInput!
    var router: SettingsRouterInput!
}

// MARK: - SettingsModuleInput

extension SettingsPresenter: SettingsModuleInput {

  	var viewController: UIViewController {
    	return view.viewController
  	}

}

// MARK: - SettingsViewOutput

extension SettingsPresenter: SettingsViewOutput {


    func viewIsReady() {

    }

}

// MARK: - SettingsInteractorOutput

extension SettingsPresenter: SettingsInteractorOutput {

}
