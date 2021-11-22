//
//  MainMainProtocols.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

protocol MainViewInput: AnyObject, Presentable {

    func setupInitialState(with models: [MainCellModel])
}

protocol MainViewOutput {

    func viewIsReady()
}

protocol MainModuleInput: AnyObject {

	var viewController: UIViewController { get }
	var output: MainModuleOutput? { get set }
}

protocol MainModuleOutput: AnyObject {

}

protocol MainInteractorInput {
    func getMainModels() -> [MainCellModel]
}

protocol MainInteractorOutput: AnyObject {

}

protocol MainRouterInput {

}
