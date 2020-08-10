//
//  LocalHistoryRecentSearchWordTableView.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/09.
//  Copyright © 2020 김지우. All rights reserved.
//

import UIKit

class LocalHistoryRecentSearchWordView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension LocalHistoryRecentSearchWordView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LocalHistoryRecentSearchWordCell") as! LocalHistoryRecentSearchWordCell
        return cell
    }
}
