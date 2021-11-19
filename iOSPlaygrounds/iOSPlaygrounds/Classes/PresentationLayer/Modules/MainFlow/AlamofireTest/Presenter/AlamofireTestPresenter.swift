//
//  AlamofireTestPresenter.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 19.11.21.
//  Copyright © 2021 b3tman. All rights reserved.
//

import UIKit

final class AlamofireTestPresenter {
    
    weak var view: AlamofireTestViewInput!
    weak var output: AlamofireTestModuleOutput?
    
    var interactor: AlamofireTestInteractorInput!
    var router: AlamofireTestRouterInput!
}

// MARK: - AlamofireTestModuleInput

extension AlamofireTestPresenter: AlamofireTestModuleInput {
    
    var viewController: UIViewController {
        return view.viewController
    }
}

// MARK: - AlamofireTestViewOutput

extension AlamofireTestPresenter: AlamofireTestViewOutput {
    
    
    func viewIsReady() {
        
    }
}

// MARK: - AlamofireTestInteractorOutput

extension AlamofireTestPresenter: AlamofireTestInteractorOutput {
    
}
