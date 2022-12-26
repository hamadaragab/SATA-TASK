//
//  TabBarPresnter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//
import Foundation
protocol TabBarPresenterProtocol: AnyObject {
   
}

class TabBarPresenter: TabBarPresenterProtocol {
    
    var interactor: TabBarInteractorProtocol?
    var viewController: TabBarViewProtocol?
    var router: TabBarRouterProtocol?
    init(interactor: TabBarInteractorProtocol, router: TabBarRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
