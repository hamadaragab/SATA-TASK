//
//  logInViewController.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//logIn

import UIKit
protocol LoginViewProtocol{
    
}
class logInViewController: UIViewController {
    @IBOutlet weak var sliderPageController: UIPageControl!
    @IBOutlet weak var sliderCollection: UICollectionView!
    var presenter: LoginPresenterProtocol?
    let sliders: [String] = ["slider1","slider2","slider3","slider4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSliderCollectionView()
        configureSliderPage()
    }
    private func configureSliderPage() {
        sliderPageController.numberOfPages = sliders.count
        _ = Timer.scheduledTimer(timeInterval: 2, target: self , selector:
      #selector(startScrolling), userInfo: nil, repeats: true)
    }
    
    @objc func startScrolling() {

        if sliderPageController.currentPage == sliderPageController.numberOfPages - 1 {
            sliderPageController.currentPage = 0
        } else {
            sliderPageController.currentPage += 1
        }
        sliderCollection.scrollToItem(at: IndexPath(row: sliderPageController.currentPage, section: 0), at: .centeredHorizontally, animated: true)
    }
    private func configureSliderCollectionView() {
        sliderCollection.delegate = self
        sliderCollection.dataSource = self
        sliderCollection.register(UINib(nibName: "SliderCell", bundle: nil), forCellWithReuseIdentifier: "SliderCell")
    }
    @IBAction func startNowTapped(_ sender: Any) {
        presenter?.routeToHomeView()
    }
    
    @IBAction func registerTapped(_ sender: Any) {
    }
}
extension logInViewController : UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sliders.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SliderCell", for: indexPath) as! SliderCell
        cell.setImage(imageName: sliders[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
extension logInViewController :LoginViewProtocol {
    
}
