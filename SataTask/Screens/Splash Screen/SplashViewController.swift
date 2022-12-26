//
//  SplashViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
// Screen

import UIKit
protocol SplashViewProtocol {
    
}
class SplashViewController: UIViewController {
    var presenter: SplashPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    private func setUpView() {
        navigationController?.navigationBar.isHidden = true
        DispatchQueue.main.asyncAfter(deadline: .now()) { [weak self] in
            self?.presenter?.routeToLogInView()
        }
    }

}

extension SplashViewController: SplashViewProtocol {
    
}
