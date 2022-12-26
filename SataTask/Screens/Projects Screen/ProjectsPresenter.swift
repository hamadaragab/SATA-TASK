//
//  ProjectsPresenter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol ProjectsPresenterProtocol: AnyObject {
   
}

class ProjectsPresenter: ProjectsPresenterProtocol {
    
    var interactor: ProjectsInteractorProtocol
    var viewController: ProjectsViewProtocol?
    var router: ProjectsRouterProtocol?
    init(interactor: ProjectsInteractorProtocol, router: ProjectsRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
