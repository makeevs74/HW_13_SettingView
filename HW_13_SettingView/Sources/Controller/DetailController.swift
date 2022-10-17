//
//  DetailViewController.swift
//  HW_13_SettingView
//
//  Created by Sergey Makeev on 11.09.2022.
//

import UIKit

class DetailController: UIViewController {

    var model: SettingRow?

    private var detailView: DetailView? {
        guard isViewLoaded else { return nil }
        return view as? DetailView
    }

    // MARK: - Lifecycle -

    override func viewDidLoad() {
        super.viewDidLoad()

        view = DetailView()
        configureView()
    }

    //MARK: - Initializers -

    convenience init(settingCell: SettingRow?) {
        self.init()
        self.model = settingCell
    }
}

private extension DetailController {
    func configureView() {
        detailView?.configureSetting(settingCell: model)
    }
}
