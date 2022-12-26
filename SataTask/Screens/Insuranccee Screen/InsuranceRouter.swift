//
//  InsurancceeRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol InsuranceRouterProtocol {
    
}

class InsuranceRouter: InsuranceRouterProtocol {
    
    weak var viewController: InsuranceViewController!
    init(view: InsuranceViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = InsuranceInteractor.init()
        let presenter = InsurancePresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
}
