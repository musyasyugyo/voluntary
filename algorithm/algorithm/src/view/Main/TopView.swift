//
//  TopView.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/02/23.
//

import UIKit

protocol TopViewDelegate: class {

}

class TopView: UIView{
    //MARK: delegate
    public weak var delegate: TopViewDelegate? = nil

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var philosophyImageView: UIImageView!
    @IBOutlet weak var pagerScrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
        //fatalErrorがデフォルトで入っていますが消さないとエラーになってしまうので注意してください！
    }

    func loadNib() {
        let nib = UINib(nibName: "TopView", bundle: Bundle(for: type(of: self)))
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            self.addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.topAnchor.constraint(equalTo: topAnchor).isActive = true
            view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        }
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        self.addSubview(view)
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
        let page1: PageScroll = PageScroll()
        page1.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 400)
        self.stackView.addSubview(page1)

        let page2: PageScroll = PageScroll()
        page2.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 400)
        self.stackView.addSubview(page2)

        let page3: PageScroll = PageScroll()
        page3.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: 400)
        self.stackView.addSubview(page3)
    }

    func updateStackViewsFrame() {
        //サイズを更新
        for view in self.stackView.subviews {
            view.frame.size = CGSize(width: self.frame.width, height: 400)
        }
    }
}
