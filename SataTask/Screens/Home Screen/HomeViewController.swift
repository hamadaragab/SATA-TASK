//
//  HomeViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 27/12/2022.
//

import UIKit
protocol HomeViewProtocol {
    
}
class HomeViewController: UIViewController {
    var presenter: HomePresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
extension HomeViewController :HomeViewProtocol {
    
}
