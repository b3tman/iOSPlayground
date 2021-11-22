//
//  ModuleAssembly.swift
//  iOSPlaygrounds
//
//  Created by Макс on 7/7/19.
//  Copyright © 2019 b3tman. All rights reserved.
//

import Swinject

class ModuleAssembly {

    private let assembler: Assembler!
    public var resolver: Resolver {
        return assembler.resolver
    }

    init(parent: Assembler) {
        assembler = Assembler([TabBarModuleAssembler(),
                               MainModuleAssembler(),
                               SettingsModuleAssembler()], parent: parent)
    }
}
