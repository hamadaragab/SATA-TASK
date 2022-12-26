//
//  TabBarRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol TabBarRouterProtocol {
    
}

class TabBarRouter: TabBarRouterProtocol {
    
    weak var viewController: TabBarViewController!
    init(view: TabBarViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = TabBarInteractor.init()
        let presenter = TabBarPresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
}
