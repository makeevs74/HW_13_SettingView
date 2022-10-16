//
//  DetailView.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 16.10.2022.
//

import UIKit

class DetailView: UIView {

    // MARK: - Outlets -

    private lazy var photoImage: UIImageView = {
        let image = UIImageView()
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 50
        image.tintColor = .white
        return image
    }()

    private lazy var iconBackgroundColor: UIImageView = {
        let color = UIImageView()
        color.layer.cornerRadius = 50
        color.clipsToBounds = true
        return color
    }()

    private lazy var name: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        return label
    }()

    private lazy var descriptionText: UILabel = {
        let descriptionText = UILabel()
        descriptionText.font = UIFont.systemFont(ofSize: 16, weight: .regular)
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
        iconBackgroundColor.addSubview(photoImage)
        addSubview(name)
        addSubview(descriptionText)
    }

    private func setupLayout() {
        photoImage.snp.makeConstraints { make in
            make.center.equalTo(snp.center)
            make.height.width.equalTo(140)
        }

        iconBackgroundColor.snp.makeConstraints { make in
            make.center.equalTo(snp.center)
            make.height.width.equalTo(200)
        }

        name.snp.makeConstraints { make in
            make.center.equalTo(snp.center)
            make.top.equalTo(iconBackgroundColor.snp.bottom).offset(20)
        }

        descriptionText.snp.makeConstraints { make in
            make.center.equalTo(snp.center)
            make.height.equalTo(20)
            make.top.equalTo(name.snp.bottom).offset(10)
        }
    }

    func configureSetting(settingCell: SettingRow?) {
        photoImage.image = UIImage(named: settingCell?.photoIcon ?? "") 
        name.text = settingCell?.nameOfSetting
        descriptionText.text = settingCell?.descriptionText
        iconBackgroundColor.backgroundColor = UIColor(named: settingCell?.iconBackgroundColor ?? "") 
    }

}
