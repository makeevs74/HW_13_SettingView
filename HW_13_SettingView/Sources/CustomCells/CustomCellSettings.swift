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

    var settingRow: SettingRow? {
        didSet {
            photoIcon.image = settingRow?.photoIcon
            nameOfSetting.text = settingRow?.nameOfSetting
            descriptionText.text = settingRow?.descriptionText
        }
    }

    // MARK: - Outlets -

    private lazy var photoIcon: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 10
        return image
    }()

    private lazy var nameOfSetting: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return label
    }()

    private lazy var descriptionText: UILabel = {
        let descriptionText = UILabel()
        descriptionText.font = UIFont.systemFont(ofSize: 12, weight: .regular)
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
        addSubview(photoIcon)
        addSubview(nameOfSetting)
        addSubview(descriptionText)
    }

    private func setupLayout() {
        photoIcon.snp.makeConstraints { make in
            make.top.left.bottom.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
            make.height.width.equalTo(20)
        }

        nameOfSetting.snp.makeConstraints { make in
            make.centerY.equalTo(photoIcon)
            make.left.equalTo(photoIcon.snp.right).offset(10)
        }

        descriptionText.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.left.equalTo(contentView).offset(-10)
        }
    }

    // MARK: - Reuse -

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
        self.settingRow = nil
    }
}

