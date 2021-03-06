//
//  SurfDateCollectionViewCell.swift
//  shaka
//
//  Created by 유정인 on 2022/07/28.
//

import UIKit

class SurfDateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    
    func configure(with dateOfSurf: String) {
        self.dateLabel.text = dateOfSurf
    }
    override var isSelected: Bool {
        didSet {
            if isSelected {
                dateLabel.isHidden = false
                dateLabel.layer.borderColor = UIColor.blue.cgColor
                dateLabel.layer.borderWidth = 2
            } else {
                dateLabel.isHidden = true
                dateLabel.layer.borderWidth = 0
            }
        }
    }
}
