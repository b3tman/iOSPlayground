//
//  MainMainProtocols.swift
//  AudiOBD2Scanner
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit


protocol MainViewInput: class, Presentable {

    func setupInitialState()
}

protocol MainViewOutput {

    func viewIsReady()
}

protocol MainModuleInput: class {

	var viewController: UIViewController { get }
	var output: MainModuleOutput? { get set }
}

protocol MainModuleOutput: class {

}

protocol MainInteractorInput {

}

protocol MainInteractorOutput: class {

}

protocol MainRouterInput {

}
