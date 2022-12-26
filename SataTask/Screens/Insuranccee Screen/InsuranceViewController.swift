//
//  InsurancceeViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import UIKit
protocol InsuranceViewProtocol {
    
}
class InsuranceViewController: UIViewController {
    var presenter: InsurancePresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        print("sssss")
        // Do any additional setup after loading the view.
    }


}
extension InsuranceViewController: InsuranceViewProtocol{
    
}
