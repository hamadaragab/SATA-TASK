//
//  ProjectsViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
// Screen

import UIKit
protocol ProjectsViewProtocol {
    
}
class ProjectsViewController: UIViewController {
    var presenter: ProjectsPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
extension ProjectsViewController: ProjectsViewProtocol{
    
}
