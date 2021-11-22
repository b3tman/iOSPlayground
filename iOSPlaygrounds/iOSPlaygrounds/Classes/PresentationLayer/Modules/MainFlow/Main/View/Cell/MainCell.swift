//
//  MainCell.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 19.11.21.
//  Copyright © 2021 b3tman. All rights reserved.
//

import UIKit

struct MainCellModel {
    var text: String
}

class MainCell: UITableViewCell {

    // MARK: - Outlets
    @IBOutlet weak var menuNameLabel: UILabel!

    // MARK: - LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()

    }
}
