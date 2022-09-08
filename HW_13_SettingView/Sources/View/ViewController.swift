//
//  ViewController.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 31.08.2022.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    private var settingRows: [[SettingRow]]?

    // MARK: - Outlets -

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(CustomCellUser.self, forCellReuseIdentifier: CustomCellUser.identifier)
        tableView.register(CustomCellSettings.self, forCellReuseIdentifier: CustomCellSettings.identifier)
        tableView.register(CustomCellWithSwitch.self, forCellReuseIdentifier: CustomCellWithSwitch.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()



    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray6
        title = "Настройки"
        settingRows = SettingRow.settingRows
        navigationController?.navigationBar.prefersLargeTitles = true
        setupHierarchy()
        setupLayout()

        let searchBar = UISearchController(searchResultsController: nil)
        searchBar.searchResultsUpdater = self
        self.navigationItem.searchController = searchBar
    }

    // MARK: - Setup -

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(view)
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return settingRows?.count ?? 0
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 && indexPath.row == 0 {
            return 80
        } else {
            return 40
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return settingRows?[section].count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCells = settingRows?[indexPath.section][indexPath.row]

        switch customCells?.typeOfCell {
        case .userCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellUser.identifier) as? CustomCellUser
            cell?.settingRow = settingRows?[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()

        case .settingCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellSettings.identifier) as? CustomCellSettings
            cell?.settingRow = settingRows?[indexPath.section][indexPath.row]
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()
            
        case .settingCellWithSwitch:
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellWithSwitch.identifier) as? CustomCellWithSwitch
            cell?.settingRow = settingRows?[indexPath.section][indexPath.row]
            cell?.accessoryType = .none
            return cell ?? UITableViewCell()

        case .none:
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cell = settingRows?[indexPath.section][indexPath.row]
        print("Вы нажали \(cell?.nameOfSetting ?? "")")
    }
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text ?? "")
    }
}


