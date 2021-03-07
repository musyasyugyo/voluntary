//
//  TopViewController.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/02/10.
//

import UIKit

class TopViewController: BaseUIViewController, TopViewDelegate {

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var topView: TopView!

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initialize()
    }
    //-------------------------------------------------------------//
    // MARK: init
    //-------------------------------------------------------------//
    private func initialize() {
        //初期化処理
        self.topView.delegate = self
    }
    
    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//


    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
    
}


