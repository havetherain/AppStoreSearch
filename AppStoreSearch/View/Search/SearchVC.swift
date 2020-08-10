//
//  SearchVC.swift
//  AppStoreSearch
//
//  Created by 김지우 on 2020/08/08.
//  Copyright © 2020 김지우. All rights reserved.
//

import UIKit

class SearchVC: UIViewController {
    @IBOutlet weak var searchResultTableView: UITableView!

    let searchController: UISearchController = {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "App Store"
        return searchController
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupSearchControllerAtNav()
    }

    private func setupSearchControllerAtNav() {
        searchController.searchBar.delegate = self

        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }
}

extension SearchVC: UISearchBarDelegate {
    func searchBarShouldBeginEditing(_ searchBar: UISearchBar) -> Bool {
        return true
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

    }
}
