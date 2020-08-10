//
//  SearchResultCell.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/09.
//  Copyright © 2020 김지우. All rights reserved.
//

import UIKit

class SearchResultCell: UITableViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var explainLabel: UILabel!
    @IBOutlet weak var starRatingView: StarRatingView!
    @IBOutlet weak var downloadCountLabel: UILabel!
    @IBOutlet weak var linkButton: UIButton!

    @IBOutlet weak var firstScreenShotImageView: UIImageView!
    @IBOutlet weak var secondScreenShotImageView: UIImageView!
    @IBOutlet weak var thirdScreenShotImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
