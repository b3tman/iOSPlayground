//
//  AppDelegate.swift
//  iOSPlaygrounds
//
//  Created by Макс on 7/7/19.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var applicationAssembler = ApplicationAssembler()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        _ = ApplicationAssembler.rootAssembler()
        self.window = applicationAssembler.assembler.resolver.resolve(UIWindow.self)!
        self.window?.makeKeyAndVisible()

        let configurators: [ConfiguratorProtocol] = applicationAssembler.assembler.resolver.resolve([ConfiguratorProtocol].self)!
        for configurator in configurators {
            configurator.configure()
        }

        return true
    }

}

extension AppDelegate {

    static var currentDelegate: AppDelegate {
        // swiftlint:disable all
        return UIApplication.shared.delegate as! AppDelegate
        // swiftlint:enable all
    }

    static var currentWindow: UIWindow {
        return currentDelegate.window!
    }

    static var moduleAssembly: ModuleAssembly {
        return applicationAssembler.assembler.resolver.resolve(ModuleAssembly.self)!
    }

    static var applicationAssembler: ApplicationAssembler {
        return currentDelegate.applicationAssembler
    }
}
