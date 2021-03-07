//
//  MainView.swift
//  applebox
//
//  Created by eqat on 2020/10/09.
//  Copyright © 2020 Eqat. All rights reserved.
//

import UIKit

protocol MainViewDelegate: class {

}

class MainView: UIView{

    //MARK: deinit
    deinit {
        print("[deinit] MainView")
    }

    //MARK: delegate
    public weak var delegate: MainViewDelegate? = nil

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var stackView: UIStackView!

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadFromNib()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.loadFromNib()
    }

    func loadFromNib() {
        let nib = UINib(nibName: "MainView", bundle: Bundle(for: type(of: self)))
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            self.addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.topAnchor.constraint(equalTo: topAnchor).isActive = true
            view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

            //init
            self.initialize()
        }
    }

    //-------------------------------------------------------------//
    // MARK: init
    //-------------------------------------------------------------//
    private func initialize() {
        //初期化処理
        self.createStackView()
    }

    //-------------------------------------------------------------//
    // MARK: functions
    //-------------------------------------------------------------//
    func createStackView() {
        let page1: PagingStackView = PagingStackView()
        page1.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 400)
        self.stackView.addSubview(page1)

        let page2: PagingStackView = PagingStackView()
        page2.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 400)
        self.stackView.addSubview(page2)

        let page3: PagingStackView = PagingStackView()
        page3.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 400)
        self.stackView.addSubview(page3)
    }

    func updateStackViewsFrame() {
        //サイズを更新
        for view in self.stackView.subviews {
            view.frame.size = CGSize(width: self.frame.width, height: 400)
        }
    }

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//

}
