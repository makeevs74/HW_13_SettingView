//
//  Model.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 01.09.2022.
//

import UIKit

enum typeOfCell {
    case userCell
    case settingCell
    case settingCellWithSwitch
}

struct SettingRow: Hashable {
    var typeOfCell: typeOfCell
    var photoIcon: UIImage?
    var nameOfSetting: String
    var descriptionText: String?
    var iconBackgroundColor: UIColor?
}

extension SettingRow {
    static var settingRows: [[SettingRow]] = [
        [SettingRow(typeOfCell: .userCell,
                    photoIcon: UIImage(named: "photoImage"),
                    nameOfSetting: "Makeev Sergey",
                    descriptionText: "Apple ID, iCloud, контент и покупки",
                    iconBackgroundColor: .white)],

        [SettingRow(typeOfCell: .settingCellWithSwitch,
                    photoIcon: UIImage(systemName: "airplane"),
                    nameOfSetting: "Авиарежим",
                    iconBackgroundColor: .systemOrange),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "wifi"),
                    nameOfSetting: "Wi-Fi",
                    descriptionText: "HUAWEI-Home-Wi-Fi",
                    iconBackgroundColor: .systemBlue),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "bluetooth"),
                    nameOfSetting: "Bluetooth",
                    descriptionText: "Вкл.",
                    iconBackgroundColor: .systemBlue),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "antenna.radiowaves.left.and.right")!,
                    nameOfSetting: "Сотовая связь",
                    iconBackgroundColor: .systemGreen),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "personalhotspot"),
                    nameOfSetting: "Режим модема",
                    iconBackgroundColor: .systemGreen),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "vpn"),
                    nameOfSetting: "VPN",
                    descriptionText: "Выкл.",
                    iconBackgroundColor: .systemBlue)],

        [SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "bell.badge.fill"),
                    nameOfSetting: "Уведомления",
                    iconBackgroundColor: .systemRed),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "speaker.wave.3.fill"),
                    nameOfSetting: "Звуки, тактильные сигналы",
                    iconBackgroundColor: .systemRed),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "moon.fill"),
                    nameOfSetting: "Фокусирование",
                    iconBackgroundColor: .systemIndigo),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "hourglass"),
                    nameOfSetting: "Экранное время",
                    iconBackgroundColor: .systemIndigo)],

        [SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "gear"),
                    nameOfSetting: "Основные",
                    iconBackgroundColor: .systemGray),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "switch.2"),
                    nameOfSetting: "Пункт управления",
                    iconBackgroundColor: .systemGray),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "textformat.size"),
                    nameOfSetting: "Экран и яркость",
                    iconBackgroundColor: .systemBlue),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "apps.iphone"),
                    nameOfSetting: "Экран «Домой»",
                    iconBackgroundColor: .blue),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "figure.wave.circle"),
                    nameOfSetting: "Универсальный доступ",
                    iconBackgroundColor: .systemBlue),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "camera.macro"),
                    nameOfSetting: "Обои",
                    iconBackgroundColor: .systemCyan),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "siri"),
                    nameOfSetting: "Siri и поиск",
                    iconBackgroundColor: .systemIndigo),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "faceid"),
                    nameOfSetting: "Face ID и код-пароль",
                    iconBackgroundColor: .systemGreen),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "sos"),
                    nameOfSetting: "Экстренный вызов - SOS",
                    iconBackgroundColor: .systemRed),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "sun.min.fill"),
                    nameOfSetting: "Уведомления о контакте",
                    iconBackgroundColor: .red),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "battery.100"),
                    nameOfSetting: "Аккумулятор",
                    iconBackgroundColor: .systemGreen),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "hand.raised.fill"),
                    nameOfSetting: "Конфиденциальность",
                    iconBackgroundColor: .systemBlue)],

        [SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "app store"),
                    nameOfSetting: "App Store"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "wallet"),
                    nameOfSetting: "Wallet и Apple Pay",
                    iconBackgroundColor: .black)]
    ]
}
