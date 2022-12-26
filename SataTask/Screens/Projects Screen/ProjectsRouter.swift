//
//  ProjectsRouter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol ProjectsRouterProtocol {
    
}

class ProjectsRouter: ProjectsRouterProtocol {
    
    weak var viewController: ProjectsViewController!
    init(view: ProjectsViewController) {
        self.viewController = view
    }
    
    func start() {
        let interactor = ProjectsInteractor.init()
        let presenter = ProjectsPresenter(interactor: interactor, router: self)
        interactor.presenter = presenter
        presenter.viewController = self.viewController
        viewController.presenter = presenter
    }
}
