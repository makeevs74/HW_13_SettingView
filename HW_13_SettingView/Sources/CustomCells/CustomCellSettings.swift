//
//  CustomCellSettings.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 01.09.2022.
//

import UIKit
import SnapKit

class CustomCellSettings: UITableViewCell {

    // MARK: - Outlets -

    private lazy var photoIcon: UIImageView = {
        let photoIcon = UIImageView()
        photoIcon.clipsToBounds = true
        photoIcon.contentMode = .scaleAspectFill
        photoIcon.layer.cornerRadius = 10
        return photoIcon
    }()

    private lazy var nameOfSetting: UILabel = {
        let nameOfSetting = UILabel()
        nameOfSetting.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return nameOfSetting
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
    }

}

