//
//  BaseContainerView.swift
//  XibResuesDemo
//
//  Created by xxf on 2021/8/9.
//

import UIKit

class BaseContainerView: UIView {
    
    var contentSize: CGSize = .zero {
        didSet {
            self.invalidateIntrinsicContentSize()
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return contentSize
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
