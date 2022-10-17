//
//  CustomCellWithSwitch.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 07.09.2022.
//

import UIKit

class CustomCellWithSwitch: UITableViewCell {

    static let identifier = "cellWithSwitch"

//    var settingRow: SettingRow? {
//        didSet {
//            photoIcon.image = settingRow?.photoIcon
//            nameOfSetting.text = settingRow?.nameOfSetting
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

    private lazy var switchButton: UISwitch = {
        let switchButton = UISwitch()
        switchButton.addTarget(self, action: #selector(switchChanged), for: .touchUpInside)
        return switchButton
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
        contentView.addSubview(iconBackgroundColor)
        iconBackgroundColor.addSubview(photoIcon)
        contentView.addSubview(nameOfSetting)
        contentView.addSubview(switchButton)
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

        switchButton.snp.makeConstraints { make in
            make.centerY.equalTo(contentView)
            make.right.equalTo(contentView).offset(-20)
        }
    }

    // MARK: - Reuse -

    func configureCell(image: String?, title: String?, backgroundcolor: UIColor?) {
        photoIcon.image = UIImage(systemName: image ?? "")
        nameOfSetting.text = title ?? ""
        iconBackgroundColor.backgroundColor = backgroundcolor
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
    }

    // MARK: - Action -

    @objc func switchChanged(switchButton: UISwitch) {
        if switchButton.isOn {
            print("Switch Включен")
        } else {
            print("Switch Выключен")
        }
    }
}

