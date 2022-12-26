//
//  logInRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//


import Foundation
protocol LoginRouterProtocol {
  func routeToTabBarView()
}

class LoginRouter: LoginRouterProtocol {
    
    weak var viewController: logInViewController!
    init(view: logInViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = LoginInteractor.init()
        let presenter = LoginPresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
    func routeToTabBarView() {
        let tabBarView = TabBarViewController.init()
        TabBarRouter(view: tabBarView).start()
        self.viewController.navigationController?.pushViewController(tabBarView, animated: true)
        }
}
