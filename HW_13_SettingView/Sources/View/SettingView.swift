//
//  ViewController.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 31.08.2022.
//

import UIKit
import SnapKit

class SettingView: UIView {
    
    // MARK: - Outlets -
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(CustomCellUser.self, forCellReuseIdentifier: CustomCellUser.identifier)
        tableView.register(CustomCellSettings.self, forCellReuseIdentifier: CustomCellSettings.identifier)
        tableView.register(CustomCellWithSwitch.self, forCellReuseIdentifier: CustomCellWithSwitch.identifier)
        return tableView
    }()
    
    //MARK: - Initializers -
    
    init() {
        super.init(frame: .zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .systemGray6
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup -
    
    private func setupHierarchy() {
        addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.snp.makeConstraints { make in
            make.top.right.bottom.left.equalTo(self)
        }
    }
}




