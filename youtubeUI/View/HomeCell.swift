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
        thumb.layer.cornerRadius = 5
        thumb.contentMode = .scaleAspectFill
        thumb.clipsToBounds = true
        return thumb
    }()
    
    let seperator : UIView = {
       let line = UIView()
        line.backgroundColor = UIColor.systemBackground
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let profilPhoto : UIImageView = {
       let photo = UIImageView(image: UIImage(named: "profile"))
        photo.translatesAutoresizingMaskIntoConstraints  = false
        photo.layer.cornerRadius = 20
        photo.layer.masksToBounds = true
        return photo
    }()
    
    let title : UILabel = {
       let label = UILabel()
        label.text = "Justin Bieber - Yummy (Lyrics)"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.contentMode = .scaleToFill
        label.font = label.font.withSize(14)
        label.numberOfLines = 0
        return label
    }()
    
    let subTitle : UILabel = {
       let label = UILabel()
        label.text = "3.035.741 görüntüleme • 14 Şub 2020 "
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = label.font.withSize(14)
        label.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        label.contentMode = .scaleToFill
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(thumbnail)
        addSubview(seperator)
        addSubview(profilPhoto)
        addSubview(title)
        addSubview(subTitle)
        startConstraint()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func startConstraint(){
        NSLayoutConstraint.activate([
            // THUMBNAIL
            thumbnail.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 10),
            thumbnail.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -10),
            thumbnail.bottomAnchor.constraint(equalTo: profilPhoto.topAnchor,constant: -10),
            thumbnail.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10),
            
            //PROFILE PHOTO
            profilPhoto.leadingAnchor.constraint(equalTo: thumbnail.leadingAnchor),
            profilPhoto.widthAnchor.constraint(equalToConstant: 40),
            profilPhoto.heightAnchor.constraint(equalToConstant: 40),
            profilPhoto.bottomAnchor.constraint(equalTo: seperator.topAnchor,constant: -10),
            
            //TITLE
            title.leadingAnchor.constraint(equalTo: profilPhoto.trailingAnchor,constant: 10),
            title.topAnchor.constraint(equalTo: thumbnail.bottomAnchor,constant: 10),
            title.trailingAnchor.constraint(equalTo: thumbnail.trailingAnchor),
            title.bottomAnchor.constraint(equalTo: subTitle.topAnchor,constant: -5),
            
            //SUBTITLE
            subTitle.leadingAnchor.constraint(equalTo: title.leadingAnchor),
            subTitle.trailingAnchor.constraint(equalTo: title.trailingAnchor),
            
            //SEPERATOR
            seperator.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1),
            seperator.heightAnchor.constraint(equalToConstant: 1),
            seperator.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -5),
            //seperator.topAnchor.constraint(equalTo: subTitle.bottomAnchor,constant: 10)
        ])

    }
    
}
