//
//  ContainerView.swift
//  XibResuesDemo
//
//  Created by xxf on 2021/8/9.
//

import UIKit

class ContainerView: UIView {

    @IBOutlet weak var contentView: BaseContainerView!
    
    var contentSize: CGSize = CGSize.zero {
        didSet {
            contentView.contentSize = contentSize
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
