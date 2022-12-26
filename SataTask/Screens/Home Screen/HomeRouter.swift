//
//  HomeRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 27/12/2022.
//

import Foundation
protocol HomeRouterProtocol {
    
}

class HomeRouter: HomeRouterProtocol {
    
    weak var viewController: HomeViewController!
    init(view: HomeViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = HomeInteractor.init()
        let presenter = HomePresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
}
