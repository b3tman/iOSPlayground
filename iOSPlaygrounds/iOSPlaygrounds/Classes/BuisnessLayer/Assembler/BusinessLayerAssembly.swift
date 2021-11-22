//
//  BusinessLayerAssembly.swift
//  iOSPlaygrounds
//
//  Created by Макс on 7/7/19.
//  Copyright © 2019 b3tman. All rights reserved.
//

import Swinject

class BusinessLayerAssembly {

    init(parent: Assembler) {
        let assemblies: [Assembly] = []
        parent.apply(assemblies: assemblies)
    }
}
