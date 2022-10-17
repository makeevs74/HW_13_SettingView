//
//  DetailView.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 16.10.2022.
//

import UIKit
import SnapKit

class DetailView: UIView {

    // MARK: - Outlets -

    private lazy var photoImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
        return image
    }()

    private lazy var iconBackgroundColor: UIImageView = {
        let color = UIImageView()
        color.layer.cornerRadius = 40
        color.clipsToBounds = true
        return color
    }()

    private lazy var name: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()

    private lazy var descriptionText: UILabel = {
        let descriptionText = UILabel()
        descriptionText.font = UIFont.systemFont(ofSize: 18, weight: .regular)
        return descriptionText
    }()

    // MARK: - Initializers -

    init() {
        super.init(frame: .zero)
        commonInit()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }

    private func commonInit() {
        backgroundColor = .white

        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup -

    private func setupHierarchy() {
        addSubview(iconBackgroundColor)
        addSubview(name)
        addSubview(descriptionText)
        iconBackgroundColor.addSubview(photoImage)
    }

    private func setupLayout() {
        photoImage.snp.makeConstraints { make in
            make.center.equalTo(iconBackgroundColor)
            make.height.width.equalTo(100)
        }

        iconBackgroundColor.snp.makeConstraints { make in
            make.center.equalTo(snp.center)
            make.height.width.equalTo(140)
        }

        name.snp.makeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.bottom.equalTo(iconBackgroundColor.snp.top).offset(-25)
        }

        descriptionText.snp.makeConstraints { make in
            make.centerX.equalTo(snp.centerX)
            make.height.equalTo(20)
            make.top.equalTo(iconBackgroundColor.snp.bottom).offset(20)
        }
    }

    func configureSetting(settingCell: SettingRow?) {
        switch settingCell?.photoIcon {
        case "bluetooth", "vpn", "wallet", "siri", "app store", "sos", "photoImage":
            photoImage.image = UIImage(named: settingCell?.photoIcon ?? "")
        default:
            photoImage.image = UIImage(systemName: settingCell?.photoIcon ?? "")
        }
        name.text = settingCell?.nameOfSetting
        descriptionText.text = settingCell?.descriptionText
        iconBackgroundColor.backgroundColor = settingCell?.iconBackgroundColor
    }
}
