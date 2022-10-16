//
//  Model.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 01.09.2022.
//

import UIKit

struct SettingModel {

    static func createModels() -> [[SettingRow]] {
        return [
            [SettingRow(typeOfCell: .userCell,
                        photoIcon: "photoImage",
                        nameOfSetting: "Makeev Sergey",
                        descriptionText: "Apple ID, iCloud, контент и покупки",
                        iconBackgroundColor: ".white")],

            [SettingRow(typeOfCell: .settingCellWithSwitch,
                        photoIcon: "airplane",
                        nameOfSetting: "Авиарежим",
                        iconBackgroundColor: ".systemOrange"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "wifi",
                        nameOfSetting: "Wi-Fi",
                        descriptionText: "HUAWEI-Home-Wi-Fi",
                        iconBackgroundColor: ".systemBlue"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "bluetooth",
                        nameOfSetting: "Bluetooth",
                        descriptionText: "Вкл.",
                        iconBackgroundColor: ".systemBlue"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "antenna.radiowaves.left.and.right",
                        nameOfSetting: "Сотовая связь",
                        iconBackgroundColor: ".systemGreen"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "personalhotspot",
                        nameOfSetting: "Режим модема",
                        iconBackgroundColor: ".systemGreen"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "vpn",
                        nameOfSetting: "VPN",
                        descriptionText: "Выкл.",
                        iconBackgroundColor: ".systemBlue")],

            [SettingRow(typeOfCell: .settingCell,
                        photoIcon: "bell.badge.fill",
                        nameOfSetting: "Уведомления",
                        iconBackgroundColor: ".systemRed"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "speaker.wave.3.fill",
                        nameOfSetting: "Звуки, тактильные сигналы",
                        iconBackgroundColor: ".systemRed"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "moon.fill",
                        nameOfSetting: "Фокусирование",
                        iconBackgroundColor: ".systemIndigo"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "hourglass",
                        nameOfSetting: "Экранное время",
                        iconBackgroundColor: ".systemIndigo")],

            [SettingRow(typeOfCell: .settingCell,
                        photoIcon: "gear",
                        nameOfSetting: "Основные",
                        iconBackgroundColor: ".systemGray"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "switch.2",
                        nameOfSetting: "Пункт управления",
                        iconBackgroundColor: ".systemGray"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "textformat.size",
                        nameOfSetting: "Экран и яркость",
                        iconBackgroundColor: ".systemBlue"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "apps.iphone",
                        nameOfSetting: "Экран «Домой»",
                        iconBackgroundColor: ".blue"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "figure.wave.circle",
                        nameOfSetting: "Универсальный доступ",
                        iconBackgroundColor: ".systemBlue"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "camera.macro",
                        nameOfSetting: "Обои",
                        iconBackgroundColor: ".systemCyan"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "siri",
                        nameOfSetting: "Siri и поиск",
                        iconBackgroundColor: ".systemIndigo"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "faceid",
                        nameOfSetting: "Face ID и код-пароль",
                        iconBackgroundColor: ".systemGreen"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "sos",
                        nameOfSetting: "Экстренный вызов - SOS",
                        iconBackgroundColor: ".systemRed"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "sun.min.fill",
                        nameOfSetting: "Уведомления о контакте",
                        iconBackgroundColor: ".red"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "battery.100",
                        nameOfSetting: "Аккумулятор",
                        iconBackgroundColor: ".systemGreen"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "hand.raised.fill",
                        nameOfSetting: "Конфиденциальность",
                        iconBackgroundColor: ".systemBlue")],

            [SettingRow(typeOfCell: .settingCell,
                        photoIcon: "app store",
                        nameOfSetting: "App Store"),
             SettingRow(typeOfCell: .settingCell,
                        photoIcon: "wallet",
                        nameOfSetting: "Wallet и Apple Pay",
                        iconBackgroundColor: ".black")]
        ]
    }
}
