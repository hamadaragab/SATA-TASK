//
//  AdvisorViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import UIKit
protocol AdvisorViewProtocol {
    
}
class AdvisorViewController: UIViewController {
    var presenter: AdvisorPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
extension AdvisorViewController: AdvisorViewProtocol{
    
}
