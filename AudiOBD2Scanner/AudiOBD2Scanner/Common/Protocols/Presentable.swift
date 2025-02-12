//
//  Presentable.swift
//  AudiOBD2Scanner
//
//  Created by Макс on 7/7/19.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

protocol Presentable {
    
    var viewController: UIViewController { get }
    
    func present()
    func present(fromViewController viewController: UIViewController)
    func setRoot(fromViewController viewController: UIViewController)
    func popToRoot()
    func presentModal(fromViewController viewController: UIViewController)
    func show(fromViewController viewController: UIViewController)
    func dissmiss()
    func dissmiss(animated: Bool)
    func dissmiss(completion: @escaping ()->())
    func dissmissModal(animated: Bool)
    func showModalAnimated(modal: UIViewController)
    func hideModalAnimated(modal: UIViewController)
}

extension Presentable where Self: UIViewController {
    
    var viewController: UIViewController {
        return self
    }
    
    func present() {
        AppDelegate.currentWindow.rootViewController = viewController
    }
    
    func present(fromViewController viewController: UIViewController) {
        viewController.navigationController?.pushViewController(self, animated: true)
    }
    
    func setRoot(fromViewController viewController: UIViewController) {
        
        viewController.navigationController?.setViewControllers([self], animated: true)
    }
    
    func popToRoot() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    func presentModal(fromViewController viewController: UIViewController) {
        viewController.present(self, animated: true, completion: nil)
    }
    
    func show(fromViewController viewController: UIViewController) {
        viewController.show(self, sender: viewController)
    }
    
    func dissmiss() {
        _ = navigationController?.popViewController(animated: true)
    }
    
    func dissmiss(animated: Bool) {
        _ = navigationController?.popViewController(animated: animated)
    }
    
    func dissmiss(completion: @escaping ()->()) {
        CATransaction.begin()
        CATransaction.setCompletionBlock(completion)
        _ = navigationController?.popToRootViewController(animated: true)
        CATransaction.commit()
    }
    
    func dissmissModal(animated: Bool = true) {
        dismiss(animated: animated, completion: nil)
    }
    
    func showModalAnimated(modal: UIViewController) {
        
        let transition: CATransition = CATransition()
        transition.duration = 0.1
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.fade
        
        if let layer = self.view.window?.layer {
            layer.add(transition, forKey: nil)
        }
        
        modal.modalPresentationStyle = .overFullScreen
        self.present(modal, animated: false, completion: nil)
    }
    
    func hideModalAnimated(modal: UIViewController) {
        
        let transition: CATransition = CATransition()
        transition.duration = 0.1
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        transition.type = CATransitionType.fade
        modal.view.window!.layer.add(transition, forKey: nil)
        self.dismiss(animated: false, completion: nil)
    }
}

