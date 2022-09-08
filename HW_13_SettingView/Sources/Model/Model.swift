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
}

extension SettingRow {
    static var settingRows: [[SettingRow]] = [
        [SettingRow(typeOfCell: .userCell,
                    photoIcon: UIImage(named: "photoImage"),
                    nameOfSetting: "Makeev Sergey",
                    descriptionText: "Apple ID, iCloud, контент и покупки")],

        [SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "airplane"),
                    nameOfSetting: "Авиарежим"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "wifi"),
                    nameOfSetting: "Wi-Fi"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "bluetooth"),
                    nameOfSetting: "Bluetooth"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "antenna.radiowaves.left.and.right")!,
                    nameOfSetting: "Сотовая связь"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "personalhotspot"),
                    nameOfSetting: "Режим модема"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "vpn"),
                    nameOfSetting: "VPN")],

        [SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "bell.badge.fill"),
                    nameOfSetting: "Уведомления"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "speaker.wave.3.fill"),
                    nameOfSetting: "Звуки, тактильные сигналы"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "moon.fill"),
                    nameOfSetting: "Фокусирование"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "hourglass"),
                    nameOfSetting: "Экранное время")],

        [SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "gear"),
                    nameOfSetting: "Основное"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "switch.2"),
                    nameOfSetting: "Пункт управления"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "textformat.size"),
                    nameOfSetting: "Экран и яркость"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "apps.iphone"),
                    nameOfSetting: "Экран «Домой»"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "figure.wave.circle"),
                    nameOfSetting: "Универсальный доступ"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "camera.macro"),
                    nameOfSetting: "Обои"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "siri"),
                    nameOfSetting: "Siri и поиск"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "faceid"),
                    nameOfSetting: "Face ID и код-пароль"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "sos"),
                    nameOfSetting: "Экстренный вызов - SOS"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "microbe.fill"),
                    nameOfSetting: "Уведомления о контакте"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "battery.100"),
                    nameOfSetting: "Аккумулятор"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(systemName: "hand.raised.fill"),
                    nameOfSetting: "Конфиденциальность")],

        [SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "app store"),
                    nameOfSetting: "App Store"),
         SettingRow(typeOfCell: .settingCell,
                    photoIcon: UIImage(named: "wallet"),
                    nameOfSetting: "Wallet и Apple Pay")]
    ]
}
