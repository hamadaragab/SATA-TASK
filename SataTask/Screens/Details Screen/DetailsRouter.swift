//
//  DetailsRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol DetailsRouterProtocol {
    
}

class DetailsRouter: DetailsRouterProtocol {
    
    weak var viewController: DetailsViewController!
    init(view: DetailsViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = DetailsInteractor.init()
        let presenter = DetailsPresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
}
