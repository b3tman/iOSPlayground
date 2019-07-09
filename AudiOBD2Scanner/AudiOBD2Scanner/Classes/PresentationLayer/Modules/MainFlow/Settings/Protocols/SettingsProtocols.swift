//
//  SettingsSettingsProtocols.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit


protocol SettingsViewInput: class, Presentable {

    func setupInitialState()
}

protocol SettingsViewOutput {

    func viewIsReady()
}

protocol SettingsModuleInput: class {

	var viewController: UIViewController { get }
	var output: SettingsModuleOutput? { get set }
}

protocol SettingsModuleOutput: class {

}

protocol SettingsInteractorInput {

}

protocol SettingsInteractorOutput: class {

}

protocol SettingsRouterInput {

}
