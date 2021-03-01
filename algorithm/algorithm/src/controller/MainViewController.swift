//
//  MainViewController.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/02/10.
//

import UIKit

class MainViewController: BaseUIViewController, MainViewDelegate {

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var mainView: MainView!

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
        self.mainView.delegate = self
    }
    
    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//


    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//
    
}


