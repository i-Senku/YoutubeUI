//
//  TabBar.swift
//  youtubeUI
//
//  Created by ercan on 20.02.2020.
//  Copyright © 2020 simitci. All rights reserved.
//

import UIKit

class TabBar : UIView{
    
    let systemIcon = ["house.fill","flame.fill","folder.fill","person.fill"]
    let selectedIndex = IndexPath(item: 0, section: 0)
    
    let collectionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.red
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView.register(TabBarCell.self, forCellWithReuseIdentifier: "tabBarCell")
        addSubview(collectionView)
        withFormat(format: "H:|[v0]|", views: collectionView)
        withFormat(format: "V:|[v0]|", views: collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.scrollIndicatorInsets = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        collectionView.selectItem(at: selectedIndex, animated: true, scrollPosition: .centeredHorizontally)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension TabBar : UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tabBarCell", for: indexPath) as! TabBarCell
        cell.iconImage.image = UIImage(systemName: systemIcon[indexPath.row])?.withRenderingMode(.alwaysTemplate)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width/4, height: frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
}
