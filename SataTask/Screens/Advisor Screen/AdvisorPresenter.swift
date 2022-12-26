//
//  AdvisorPresenter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol AdvisorPresenterProtocol: AnyObject {
   
}

class AdvisorPresenter: AdvisorPresenterProtocol {
    
    var interactor: AdvisorInteractorProtocol
    var viewController: AdvisorViewProtocol?
    var router: AdvisorRouterProtocol?
    init(interactor: AdvisorInteractorProtocol, router: AdvisorRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
