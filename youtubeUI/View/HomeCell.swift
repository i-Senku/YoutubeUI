//
//  HomeCell.swift
//  youtubeUI
//
//  Created by ercan on 19.02.2020.
//  Copyright © 2020 simitci. All rights reserved.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    let thumbnail : UIImageView = {
       let thumb = UIImageView(image: UIImage(named: "thumbnail_taylor"))
        thumb.translatesAutoresizingMaskIntoConstraints = false
        thumb.backgroundColor = UIColor.blue
        return thumb
    }()
    
    let seperator : UIView = {
       let line = UIView()
        line.backgroundColor = UIColor.black
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(thumbnail)
        addSubview(seperator)
        startConstraint()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startConstraint(){
        //WIDTH
        withFormat(format: "H:|-10-[v0]-10-|", views: thumbnail)
        withFormat(format: "H:|-1-[v0]-1-|", views: seperator)
        
        //HEIGHT
        withFormat(format: "V:|-10-[v0]-5-|", views: thumbnail)
        
        //BOTTOM
        withFormat(format: "V:[v0]-10-[v1(1)]", views: thumbnail,seperator)
    }
    
}
