//
//  HomePresenter.swift
//  SataTask
//
//  Created by Hamada Ragab on 27/12/2022.
//

import Foundation
protocol HomePresenterProtocol: AnyObject {
   
}

class HomePresenter: HomePresenterProtocol {
    
    var interactor: HomeInteractorProtocol
    var viewController: HomeViewProtocol?
    var router: HomeRouterProtocol?
    init(interactor: HomeInteractorProtocol, router: HomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
