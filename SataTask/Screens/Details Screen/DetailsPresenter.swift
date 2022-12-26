//
//  DetailsPresenter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol DetailsPresenterProtocol: AnyObject {
   
}

class DetailsPresenter: DetailsPresenterProtocol {
    
    var interactor: DetailsInteractorProtocol
    var viewController: DetailsViewProtocol?
    var router: DetailsRouterProtocol?
    init(interactor: DetailsInteractorProtocol, router: DetailsRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
