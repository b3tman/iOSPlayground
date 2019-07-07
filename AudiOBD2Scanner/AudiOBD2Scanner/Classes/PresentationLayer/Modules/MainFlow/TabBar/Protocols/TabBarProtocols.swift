//
//  TabBarTabBarProtocols.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit


protocol TabBarViewInput: class, Presentable {

    func setupInitialState()
}

protocol TabBarViewOutput {

    func viewIsReady()
}

protocol TabBarModuleInput: class {

	var viewController: UIViewController { get }
	var output: TabBarModuleOutput? { get set }
}

protocol TabBarModuleOutput: class {

}

protocol TabBarInteractorInput {

}

protocol TabBarInteractorOutput: class {

}

protocol TabBarRouterInput {

}
