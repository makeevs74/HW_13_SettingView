//
//  SettingController.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 11.10.2022.
//

import UIKit

class SettingController: UIViewController {

    var model: [[SettingRow]]?

    private var settingView: SettingView? {
        guard isViewLoaded else { return nil }
        return view as? SettingView
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view = SettingView()
        model = SettingModel.createModels()

        settingView?.tableView.delegate = self
        settingView?.tableView.dataSource = self

        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true

        let searchBar = UISearchController(searchResultsController: nil)
        searchBar.searchResultsUpdater = self
        self.navigationItem.searchController = searchBar
    }
}

extension SettingController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        return model?.count ?? 0
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 && indexPath.row == 0 {
            return 80
        } else {
            return 50
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return model?[section].count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCells = model?[indexPath.section][indexPath.row]

        switch customCells?.typeOfCell {
        case .userCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellUser.identifier) as? CustomCellUser
            cell?.configureCell(image: customCells?.photoIcon,
                                title: customCells?.nameOfSetting,
                                description: customCells?.descriptionText)
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()

        case .settingCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellSettings.identifier) as? CustomCellSettings
            cell?.configureCell(image: customCells?.photoIcon,
                                title: customCells?.nameOfSetting,
                                description: customCells?.descriptionText,
                                backgroundcolor: customCells?.iconBackgroundColor)
            cell?.accessoryType = .disclosureIndicator
            return cell ?? UITableViewCell()

        case .settingCellWithSwitch:
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCellWithSwitch.identifier) as? CustomCellWithSwitch
            cell?.configureCell(image: customCells?.photoIcon,
                                title: customCells?.nameOfSetting)
            cell?.accessoryType = .none
            return cell ?? UITableViewCell()

        case .none:
            return UITableViewCell()
        }
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = model?[indexPath.section][indexPath.row]
        print("Вы нажали \(cell?.nameOfSetting ?? "")")

        switch cell?.typeOfCell {
        case .settingCellWithSwitch:
            tableView.deselectRow(at: indexPath, animated: true)
        case .userCell, .settingCell:
            tableView.deselectRow(at: indexPath, animated: true)
            let detailController = DetailController()
            tableView.deselectRow(at: indexPath, animated: true)
            detailController.model = model?[indexPath.section][indexPath.row]
            navigationController?.pushViewController(detailController, animated: true)
        case .none:
            return
        }
    }
}

extension SettingController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text ?? "")
    }
}
