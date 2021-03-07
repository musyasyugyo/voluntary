//
//  MainViewController.swift
//  applebox
//
//  Created by eqat on 2020/10/09.
//  Copyright © 2020 Eqat. All rights reserved.
//

import UIKit

class MainViewController: BaseUIViewController, MainViewDelegate {

    //MARK: deinit
    deinit {
        print("[deinit] MainViewController")
    }

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var mainView: MainView!

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//
    override func viewDidLoad() {
        super.viewDidLoad()

        //navigation title
        self.navigationItem.title = "main_navigation_name".localized()

        //init
        self.initialize()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.mainView.updateStackViewsFrame()
    }

    //-------------------------------------------------------------//
    // MARK: init
    //-------------------------------------------------------------//
    private func initialize() {
        //初期化処理
        self.mainView.delegate = self
    }

    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
}
