//
//  AppInfoCell.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/10.
//  Copyright © 2020 김지우. All rights reserved.
//

import UIKit

class AppInfoCell: UICollectionViewCell {
    @IBOutlet weak var appInfoTableView: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}

class InfoCell: UITableViewCell {
    @IBOutlet weak var infoTypeLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
