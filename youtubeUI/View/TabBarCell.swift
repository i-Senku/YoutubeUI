//
//  TabBarCell.swift
//  youtubeUI
//
//  Created by ercan on 20.02.2020.
//  Copyright © 2020 simitci. All rights reserved.
//

import UIKit

class TabBarCell: UICollectionViewCell {
    
    let iconImage : UIImageView = {
        let view = UIImageView(image: UIImage(systemName: "house.fill"))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.tintColor = #colorLiteral(red: 0.3568627451, green: 0.05490196078, blue: 0.05098039216, alpha: 1)
        return view
    }()
    
    override var isHighlighted: Bool{
        didSet{
            iconImage.tintColor = isHighlighted ? UIColor.white : #colorLiteral(red: 0.3568627451, green: 0.05490196078, blue: 0.05098039216, alpha: 1)
        }
    }
    
    override var isSelected: Bool{
        didSet{
            iconImage.tintColor = isSelected ? UIColor.white : #colorLiteral(red: 0.3568627451, green: 0.05490196078, blue: 0.05098039216, alpha: 1)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.red
        addSubview(iconImage)
        setupView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView(){
        withFormat(format: "H:[v0(30)]", views: iconImage)
        withFormat(format: "V:[v0(30)]", views: iconImage)
        iconImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        iconImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
}
