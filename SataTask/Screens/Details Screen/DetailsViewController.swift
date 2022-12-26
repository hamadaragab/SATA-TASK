//
//  DetailsViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import UIKit
protocol DetailsViewProtocol {
    
}
class DetailsViewController: UIViewController {
    var presenter: DetailsPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension DetailsViewController: DetailsViewProtocol{
    
}
