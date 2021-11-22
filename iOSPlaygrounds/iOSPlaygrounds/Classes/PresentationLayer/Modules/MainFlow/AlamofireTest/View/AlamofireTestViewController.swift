//
//  AlamofireTestViewController.swift
//  iOSPlaygrounds
//
//  Created Maxim Brishten on 19.11.21.
//  Copyright © 2021 b3tman. All rights reserved.
//

import UIKit

class AlamofireTestViewController: UIViewController {

    var output: AlamofireTestViewOutput!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

// MARK: - AlamofireTestViewInput

extension AlamofireTestViewController: AlamofireTestViewInput {

    func setupInitialState() {

    }
}
