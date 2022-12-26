//
//  logInPresenter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol LoginPresenterProtocol: AnyObject {
    func routeToHomeView()
}

class LoginPresenter: LoginPresenterProtocol {
    
    var interactor: LoginInteractorProtocol?
    var viewController: LoginViewProtocol?
    var router: LoginRouterProtocol?
    init(interactor: LoginInteractorProtocol, router: LoginRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    func routeToHomeView() {
        self.router?.routeToTabBarView()
    }
}
