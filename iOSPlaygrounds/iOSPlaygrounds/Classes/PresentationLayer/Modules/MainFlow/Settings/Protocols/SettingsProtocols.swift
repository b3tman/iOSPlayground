//
//  SettingsSettingsProtocols.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

protocol SettingsViewInput: AnyObject, Presentable {

    func setupInitialState()
}

protocol SettingsViewOutput {

    func viewIsReady()
}

protocol SettingsModuleInput: AnyObject {

	var viewController: UIViewController { get }
	var output: SettingsModuleOutput? { get set }
}

protocol SettingsModuleOutput: AnyObject {

}

protocol SettingsInteractorInput {

}

protocol SettingsInteractorOutput: AnyObject {

}

protocol SettingsRouterInput {

}
