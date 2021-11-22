//
//  MainMainViewController.swift
//  iOSPlaygrounds
//
//  Created by Maxim Brishten on 07/07/2019.
//  Copyright © 2019 b3tman. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    var output: MainViewOutput!

    // MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Private properties

    var models = [MainCellModel]()

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        output.viewIsReady()
        configTableView()
        navigationItem.title = R.string.localizable.mainTitle()
    }

    // MARK: - Private

    private func configTableView() {
        tableView.register(R.nib.mainCell)
        tableView.delegate = self
        tableView.dataSource = self
        let footerView = UIView()
        footerView.backgroundColor = .white
        tableView.tableFooterView = footerView
    }
}

// MARK: - UITableViewDataSource

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: R.reuseIdentifier.mainCell, for: indexPath) else { return UITableViewCell() }

        cell.menuNameLabel.text = models[indexPath.row].text

        return cell
    }
}

// MARK: - UITableViewDelegate

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - MainViewInput

extension MainViewController: MainViewInput {

    func setupInitialState(with models: [MainCellModel]) {
        self.models = models
        tableView.reloadData()
  	}
}
