//
//  DetailViewController.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 11.09.2022.
//

import UIKit

class DetailViewController: UIViewController {

    var settingRow: SettingRow? {
        didSet {
            photoImage.image = settingRow?.photoIcon
            name.text = settingRow?.nameOfSetting
            descriptionText.text = settingRow?.descriptionText
            iconBackgroundColor.backgroundColor = settingRow?.iconBackgroundColor
        }
    }

    // MARK: - Outlets -

    private lazy var photoImage: UIImageView = {
        let image = UIImageView()
        //image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 30
        image.tintColor = .white
        return image
    }()

    private lazy var iconBackgroundColor: UIImageView = {
        let color = UIImageView()
        color.layer.cornerRadius = 50
        return color
    }()

    private lazy var name: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .regular)
        return label
    }()

    private lazy var descriptionText: UILabel = {
        let descriptionText = UILabel()
        descriptionText.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return descriptionText
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setup -

    private func setupHierarchy() {
        view.addSubview(iconBackgroundColor)
        view.addSubview(photoImage)
        view.addSubview(name)
        view.addSubview(descriptionText)
    }

    private func setupLayout() {
        photoImage.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.height.width.equalTo(140)
        }

        iconBackgroundColor.snp.makeConstraints { make in
            make.center.equalTo(view)
            make.height.width.equalTo(200)
        }

        name.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(iconBackgroundColor.snp.bottom).offset(20)
        }

        descriptionText.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.height.equalTo(20)
            make.top.equalTo(name.snp.bottom).offset(10)
        }
    }
    
//    private func fillSetting() {
//        photoImage.image = settingRow?.photoIcon
//        name.text = settingRow?.nameOfSetting
//        descriptionText.text = settingRow?.descriptionText
//    }
}
