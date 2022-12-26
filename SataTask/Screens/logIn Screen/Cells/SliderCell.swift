//
//  SliderCell.swift
//  SataTask
//
//  Created by Hamada Ragab on 26/12/2022.
//

import UIKit

class SliderCell: UICollectionViewCell {

    @IBOutlet weak var sliderImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setImage(imageName: String) {
        sliderImage.image = UIImage(named: imageName)
    }

}
