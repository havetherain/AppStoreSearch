//
//  AppScreenshotsCell.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/10.
//  Copyright © 2020 김지우. All rights reserved.
//

import UIKit

class AppScreenshotsCell: UICollectionViewCell {
    @IBOutlet weak var screenshotsCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

class ScreenshotCell: UICollectionViewCell {
    @IBOutlet weak var screenshotImageView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
