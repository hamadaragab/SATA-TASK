//
//  SnapPresenter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol SnapPresenterProtocol: AnyObject {
   
}

class SnapPresenter: SnapPresenterProtocol {
    
    var interactor: SnapInteractorProtocol
    var viewController: SnapViewProtocol?
    var router: SnapRouterProtocol?
    init(interactor: SnapInteractorProtocol, router: SnapRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
