//
//  AdvisorRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol AdvisorRouterProtocol {
    
}

class AdvisorRouter: AdvisorRouterProtocol {
    
    weak var viewController: AdvisorViewController!
    init(view: AdvisorViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = AdvisorInteractor.init()
        let presenter = AdvisorPresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
}
