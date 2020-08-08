//
//  SearchVC.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/08.
//  Copyright © 2020 김지우. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    @IBOutlet weak var recentSearchWordTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTableViewAttributes()
        setupSearchBar()
    }

    private func setupTableViewAttributes() {
        recentSearchWordTableView.delegate = self
        recentSearchWordTableView.dataSource = self
    }

    private func setupSearchBar() {
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
}

extension SearchVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecentSearchWordCell") as! RecentSearchWordCell
        return cell
    }
}
