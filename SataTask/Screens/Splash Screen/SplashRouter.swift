//
//  SplashRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
// SplashRouter

import Foundation
protocol SplashRouterProtocol {
    func routeToLogInView()
}

class SplashRouter: SplashRouterProtocol {
    
    weak var viewController: SplashViewController!
    init(view: SplashViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = SplashInteractor.init()
        let presenter = SplashPresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
    func routeToLogInView() {
//        let loginView = HomeViewController.init()
//        HomeRouter(view: loginView).start()
//        self.viewController.navigationController?.pushViewController(loginView, animated: true)
        let loginView = logInViewController.init()
        LoginRouter(view: loginView).start()
        self.viewController.navigationController?.pushViewController(loginView, animated: true)
        }
    }
