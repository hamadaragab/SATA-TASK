//
//  SnapViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import UIKit
protocol SnapViewProtocol {
    
}
class SnapViewController: UIViewController {
    var presenter: SnapPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
extension SnapViewController: SnapViewProtocol{
    
}
