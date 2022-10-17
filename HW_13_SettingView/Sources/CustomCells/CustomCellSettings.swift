//
//  CustomCellSettings.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 01.09.2022.
//

import UIKit
import SnapKit

class CustomCellSettings: UITableViewCell {

    static let identifier = "cellOfSettings"

//    var settingRow: SettingRow? {
//        didSet {
//            photoIcon.image = settingRow?.photoIcon
//            nameOfSetting.text = settingRow?.nameOfSetting
//            descriptionText.text = settingRow?.descriptionText
//            iconBackgroundColor.backgroundColor = settingRow?.iconBackgroundColor
//        }
//    }

    // MARK: - Outlets -

    private lazy var photoIcon: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        image.tintColor = .white
        return image
    }()

    private lazy var iconBackgroundColor: UIImageView = {
        let color = UIImageView()
        color.layer.cornerRadius = 7
        return color
    }()

    private lazy var nameOfSetting: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return label
    }()

    private lazy var descriptionText: UILabel = {
        let descriptionText = UILabel()
        descriptionText.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        descriptionText.textColor = .systemGray
        return descriptionText
    }()

    // MARK: - Initialisers -

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Setup -

    private func setupHierarchy() {
        contentView.addSubview(nameOfSetting)
        contentView.addSubview(descriptionText)
        contentView.addSubview(iconBackgroundColor)
        iconBackgroundColor.addSubview(photoIcon)
    }

    private func setupLayout() {
        photoIcon.snp.makeConstraints { make in
            make.center.equalTo(iconBackgroundColor)
            make.height.width.equalTo(22)
        }

        iconBackgroundColor.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
            make.height.width.equalTo(30)
        }

        nameOfSetting.snp.makeConstraints { make in
            make.centerY.equalTo(photoIcon)
            make.left.equalTo(iconBackgroundColor.snp.right).offset(15)
        }

        descriptionText.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.right.equalTo(contentView).offset(-15)
        }
    }

    // MARK: - Reuse -

    func configureCell(image: String?, title: String?, description: String?, backgroundcolor: UIColor?) {
        switch image {
        case "bluetooth", "vpn", "wallet", "siri", "app store", "sos":
            photoIcon.image = UIImage(named: image ?? "")
        default:
            photoIcon.image = UIImage(systemName: image ?? "")
        }
        nameOfSetting.text = title ?? ""
        descriptionText.text = description ?? ""
        iconBackgroundColor.backgroundColor = backgroundcolor
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
//        self.settingRow = nil
    }
}

