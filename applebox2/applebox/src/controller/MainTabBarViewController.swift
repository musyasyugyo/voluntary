//
//  MainTabBarViewController.swift
//  applebox
//
//  Created by eqat on 2021/02/13.
//  Copyright © 2021 Eqat. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    //MARK: deinit
    deinit {
        print("[deinit] MainTabBarViewController")
    }

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//
    override func viewDidLoad() {
        super.viewDidLoad()

        print("create tab")

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
    }

    //-------------------------------------------------------------//
    // MARK: init
    //-------------------------------------------------------------//
    private func initialize() {
        //初期化処理
        var viewControllers: [UIViewController] = []

        let tab1 = UIStoryboard(name: "Main", bundle: nil)
        if let tab1VC = tab1.instantiateInitialViewController() as? BaseUINavigationController {
            viewControllers.append(tab1VC)
        }

        // ViewControllerをセット
        self.setViewControllers(viewControllers, animated: false)
    }

    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
}
