//
//  AddViewController.swift
//  applebox
//
//  Created by eqat on 2020/10/09.
//  Copyright © 2020 Eqat. All rights reserved.
//

import UIKit

class AddViewController: BaseUIViewController {

    //MARK: deinit
    deinit {
        print("[deinit] AddViewController")
    }

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var addView: AddView!

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//
    override func viewDidLoad() {
        super.viewDidLoad()

        //navigation title
        self.navigationItem.title = "add_navigation_name".localized()
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
    }
}
