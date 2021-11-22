//
//  AlamofireTestProtocols.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 19.11.21.
//  Copyright © 2021 b3tman. All rights reserved.
//

import UIKit

protocol AlamofireTestViewInput: AnyObject, Presentable {

    func setupInitialState()
}

protocol AlamofireTestViewOutput {

    func viewIsReady()
}

protocol AlamofireTestModuleInput: AnyObject {

    var viewController: UIViewController { get }
    var output: AlamofireTestModuleOutput? { get set }
}

protocol AlamofireTestModuleOutput: AnyObject {

}

protocol AlamofireTestInteractorInput {

}

protocol AlamofireTestInteractorOutput: AnyObject {

}

protocol AlamofireTestRouterInput {

}
