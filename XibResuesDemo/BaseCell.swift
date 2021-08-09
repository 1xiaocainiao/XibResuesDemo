//
//  BaseCell.swift
//  XibResuesDemo
//
//  Created by xxf on 2021/8/9.
//

import UIKit

class BaseCell: UITableViewCell {
    
    var subContentView: ContainerView!

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        subContentView = Bundle.main.loadNibNamed("ContainerView", owner: nil, options: nil)![0] as? ContainerView
        self.contentView.addSubview(subContentView)
        
        subContentView.snp.makeConstraints { make in
            make.edges.equalTo(self.contentView)
        }
        
        setupContentSubView()
    }
    
    func setupContentSubView() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func refresh(showMeizi: Bool) {
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
