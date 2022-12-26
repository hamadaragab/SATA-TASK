//
//  SnapRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol SnapRouterProtocol {
    
}

class SnapRouter: SnapRouterProtocol {
    
    weak var viewController: SnapViewController!
    init(view: SnapViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = SnapInteractor.init()
        let presenter = SnapPresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
}
