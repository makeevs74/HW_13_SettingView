//
//  Model.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 01.09.2022.
//

import UIKit

struct SettingRow: Hashable {
    var photoIcon: UIImage?
    var nameOfSetting: String
}

extension SettingRow {
    static var settingRow: [[SettingRow]] = [
        [SettingRow(photoIcon: UIImage(systemName: "airplane")!, nameOfSetting: "Авиарежим")],
        [SettingRow(photoIcon: UIImage(systemName: "wifi")!, nameOfSetting: "Wi-Fi")],
        [SettingRow(photoIcon: UIImage(named: "bluetooth"), nameOfSetting: "Bluetooth")],
        [SettingRow(photoIcon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, nameOfSetting: "Сотовая связь")],
        [SettingRow(photoIcon: UIImage(systemName: "personalhotspot")!, nameOfSetting: "Режим модема")],
        [SettingRow(photoIcon: UIImage(named: "vpn"), nameOfSetting: "VPN")]
    ]
}
