//
//  SplashView.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol SplashPresenterProtocol: AnyObject {
    func routeToLogInView()
}

class SplashPresenter: SplashPresenterProtocol {
    
    var interactor: SplashInteractorProtocol
    var viewController: SplashViewProtocol?
    var router: SplashRouterProtocol?
    init(interactor: SplashInteractorProtocol, router: SplashRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
    func routeToLogInView() {
        self.router?.routeToLogInView()
    }
}
