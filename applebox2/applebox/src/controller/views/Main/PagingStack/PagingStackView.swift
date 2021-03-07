//
//  PagingStackView.swift
//  applebox
//
//  Created by eqat on 2021/02/13.
//  Copyright © 2021 Eqat. All rights reserved.
//

import UIKit

class PagingStackView: UIView{

    //MARK: deinit
    deinit {
        print("[deinit] PagingStackView")
    }

    //MARK: delegate
//    public weak var delegate: MainViewDelegate? = nil

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var sendButton: UIButton!

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
        let nib = UINib(nibName: "PagingStackView", bundle: Bundle(for: type(of: self)))
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
    }

    //-------------------------------------------------------------//
    // MARK: delegate
    //-------------------------------------------------------------//

}
