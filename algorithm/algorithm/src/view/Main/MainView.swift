//
//  MainView.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/02/23.
//

import UIKit

protocol MainViewDelegate: class {

}

class MainView: UIView{
    //MARK: delegate
    public weak var delegate: MainViewDelegate? = nil

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var philosophyImage: UIImageView!
    @IBOutlet weak var pagerScroll: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//

//    func loadNib() {
//        let nib = UINib(nibName: "MainView", bundle: Bundle(for: type(of: self)))
////        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
////            self.addSubview(view)
////            view.translatesAutoresizingMaskIntoConstraints = false
////            view.topAnchor.constraint(equalTo: topAnchor).isActive = true
////            view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
////            view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
////            view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
////        }
//        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
//        self.addSubview(view)
//    }
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
        let nib = UINib(nibName: "MainView", bundle: Bundle(for: type(of: self)))
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            self.addSubview(view)
//            view.translatesAutoresizingMaskIntoConstraints = false
//            view.topAnchor.constraint(equalTo: topAnchor).isActive = true
//            view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//            view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//            view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true

            //init
            //self.initialize()
        }
    }
}
