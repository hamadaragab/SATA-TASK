//
//  HomeViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import UIKit
protocol TabBarViewProtocol {
    
}
class TabBarViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var advisorrStack: TappedStack!
    @IBOutlet weak var insuranceStacck: TappedStack!
    @IBOutlet weak var currentStack: TappedStack!
    @IBOutlet weak var snapStack: TappedStack!
    @IBOutlet weak var HomeStack: TappedStack!
    var presenter: TabBarPresenterProtocol?
    private var tabBarStacks: [TappedStack]?
    private var tabBarViewControllers: [UIViewController]!
    private var selectedIndex: Int = 2
    override func viewDidLoad() {
        super.viewDidLoad()
        createViewController()
        configureView()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    private func configureView()
    {
        tabBarStacks = [HomeStack,snapStack,currentStack,insuranceStacck,advisorrStack]
        stackDidTap(tabBarStacks![selectedIndex])
        tabBarStacks?.forEach({ tabStack in
            tabStack.tapDelegate = self
        })
    }
   
    private func createViewController() {
        let homeView = HomeViewController.init()
        HomeRouter(view: homeView).start()
        let advisorView = AdvisorViewController.init()
        AdvisorRouter(view: advisorView).start()
        let snapView = SnapViewController.init()
        SnapRouter(view: snapView).start()
        let insuranceView = InsuranceViewController.init()
        InsuranceRouter(view: insuranceView).start()
        let projectsView = ProjectsViewController.init()
        ProjectsRouter(view: projectsView).start()
        tabBarViewControllers = [homeView,snapView,projectsView,insuranceView,advisorView]
    }
}

extension TabBarViewController : TabBarViewProtocol {
    
}
extension TabBarViewController:TappedStackcDelegate {
    func stackDidTap(_ stack: TappedStack) {
        let previousIndex = selectedIndex
        selectedIndex = stack.tag
        let previousVC = tabBarViewControllers[previousIndex]
        previousVC.willMove(toParent: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParent()
        let vc = tabBarViewControllers[selectedIndex]
        addChild(vc)
        vc.view.frame = containerView.bounds
        containerView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
}
