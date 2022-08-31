//
//  CustomCellUser.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 01.09.2022.
//

import UIKit
import SnapKit

class CustomCellUser: UITableViewCell {

    // MARK: - Outlets -

    private lazy var photoImage: UIImageView = {
        let photoImage = UIImageView()
        photoImage.clipsToBounds = true
        photoImage.image = UIImage(named: "photoImage")
        photoImage.contentMode = .scaleAspectFill
        photoImage.layer.cornerRadius = 30
        return photoImage
    }()

    private lazy var name: UILabel = {
        let name = UILabel()
        name.text = "Makeev Sergey"
        name.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        return name
    }()

    private lazy var descriptionText: UILabel = {
        let descriptionText = UILabel()
        descriptionText.text = "Apple ID, iCloud, контент и покупки"
        descriptionText.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        return descriptionText
    }()

    private lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .leading
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 3
        return stack
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
        stack.addArrangedSubview(name)
        stack.addArrangedSubview(descriptionText)
        addSubview(photoImage)
        addSubview(stack)
    }

    private func setupLayout() {
        photoImage.snp.makeConstraints { make in
            make.top.left.bottom.equalTo(contentView).offset(10)
            make.centerY.equalTo(contentView)
            make.height.width.equalTo(60)
        }

        stack.snp.makeConstraints { make in
            make.centerY.equalTo(photoImage)
            make.left.equalTo(photoImage.snp.right).offset(20)
        }
    }

}

