//
//  AppDetailHeaderView.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/10.
//  Copyright © 2020 김지우. All rights reserved.
//

import UIKit

class AppDetailHeaderView: UICollectionReusableView {
    @IBOutlet weak var appIconImageView: UIImageView!
    @IBOutlet weak var appTitleLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var linkButton: UIButton!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var ratingView: StarRatingView!
    @IBOutlet weak var advisoryLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
