//
//  PageScroll.swift
//  algorithm
//
//  Created by Minako Tanaka on 2021/02/13.
//

import UIKit

class PageScroll: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    //-------------------------------------------------------------//
    // MARK: 変数定義
    //-------------------------------------------------------------//
    @IBOutlet weak var businessImage: UIImageView!
    @IBOutlet weak var businessTitle: UILabel!
    @IBOutlet weak var businessContent: UILabel!
    @IBOutlet weak var detailsButton: UIButton!

    //-------------------------------------------------------------//
    // MARK: ライフサイクル
    //-------------------------------------------------------------//
    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }

    func loadNib(){
        let view = Bundle.main.loadNibNamed("PageScroll", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
}
