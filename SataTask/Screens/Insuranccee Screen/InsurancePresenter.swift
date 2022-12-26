//
//  InsurancceePresneter.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import Foundation
protocol InsurancePresenterProtocol: AnyObject {
   
}

class InsurancePresenter: InsurancePresenterProtocol {
    
    var interactor: InsuranceInteractorProtocol
    var viewController: InsuranceViewProtocol?
    var router: InsuranceRouterProtocol?
    init(interactor: InsuranceInteractorProtocol, router: InsuranceRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
