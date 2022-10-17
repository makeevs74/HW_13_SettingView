//
//  SettingRow.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 11.10.2022.
//

import UIKit

enum typeOfCell {
    case userCell
    case settingCell
    case settingCellWithSwitch
}

struct SettingRow {
    var typeOfCell: typeOfCell
    var photoIcon: String?
    var nameOfSetting: String
    var descriptionText: String?
    var iconBackgroundColor: UIColor?
}
