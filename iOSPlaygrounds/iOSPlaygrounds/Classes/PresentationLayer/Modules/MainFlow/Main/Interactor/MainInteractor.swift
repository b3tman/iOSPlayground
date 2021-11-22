//
//  MainMainInteractor.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

class MainInteractor {

    weak var output: MainInteractorOutput!

    func getMainModels() -> [MainCellModel] {
        let alamofireModel = MainCellModel(text: R.string.localizable.mainAlamofireItem())
        return [alamofireModel]
    }

}

// MARK: - MainInteractorInput

extension MainInteractor: MainInteractorInput {

}
