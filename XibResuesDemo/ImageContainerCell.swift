//
//  ImageCell.swift
//  XibResuesDemo
//
//  Created by xxf on 2021/8/9.
//

import UIKit

class ImageContainerCell: BaseCell {
    
    var logoImageView: UIImageView!
    
    var meiziLogoImageView: UIImageView!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    override func setupContentSubView() {
        super.setupContentSubView()
        
        logoImageView = UIImageView(image: UIImage(named: "Image"))
        self.subContentView.contentView.addSubview(logoImageView)
        logoImageView.contentMode = .scaleAspectFill
        logoImageView.clipsToBounds = true
        logoImageView.isHidden = true
        logoImageView.isUserInteractionEnabled = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTap(_:)))
        logoImageView.addGestureRecognizer(tap)
        
        meiziLogoImageView = UIImageView(image: UIImage(named: "Image-1"))
        self.subContentView.contentView.addSubview(meiziLogoImageView)
        meiziLogoImageView.contentMode = .scaleAspectFill
        meiziLogoImageView.clipsToBounds = true
        meiziLogoImageView.isHidden = true
        
        //注意用约束时，和xib中的约束冲突处理，可以将xib中top或者bottom约束的优先级调低，避免高度冲突
//        logoImageView.snp.makeConstraints { make in
//            make.top.left.bottom.equalTo(self.subContentView.contentView)
//            make.size.equalTo(CGSize(width: 100, height: 200))
//        }
    }
    
    @objc func didTap(_ gesture: UITapGestureRecognizer) {
        print("tap")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    override func refresh(showMeizi: Bool) {
        super.refresh(showMeizi: showMeizi)
        
        self.subContentView.contentView.subviews.forEach { view in
            view.isHidden = true
            view.frame = CGRect.zero
        }
        
        if showMeizi {
            meiziLogoImageView.isHidden = false
            
            // 注意这里必须要设置对应的frame和contentSize,否则要么不正常显示，要么frame不对会导致不想赢点击事件
            meiziLogoImageView.frame = CGRect(x: 0, y: 0, width: 160, height: 300)
            
            self.subContentView.contentView.contentSize = CGSize(width: UIView.noIntrinsicMetric, height: 300)
        } else {
            logoImageView.isHidden = false
            
            logoImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
            
            self.subContentView.contentView.contentSize = CGSize(width: UIView.noIntrinsicMetric, height: 200)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
