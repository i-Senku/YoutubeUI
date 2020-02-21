//
//  ViewController.swift
//  youtubeUI
//
//  Created by ercan on 19.02.2020.
//  Copyright © 2020 simitci. All rights reserved.
//

import UIKit

class HomeController: UICollectionViewController,UICollectionViewDelegateFlowLayout{
    
    let tabBar : TabBar = {
       let view = TabBar()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = UIColor.white
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 30, height: view.frame.height))
        titleLabel.text = "Ana Sayfa"
        titleLabel.textColor = UIColor.white
        titleLabel.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        navigationItem.titleView = titleLabel
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.red
        collectionView.register(HomeCell.self, forCellWithReuseIdentifier: "cell")
        navigationController?.navigationBar.shadowImage = UIImage()
        collectionView.contentInset = UIEdgeInsets(top: 50, left: 0, bottom: 0, right: 0)
        setupTabBar()
        setupBarItem()

    }
    
    func setupTabBar(){
        view.addSubview(tabBar)
        view.withFormat(format: "H:|[v0]|", views: tabBar)
        view.withFormat(format: "V:[v0(50)]", views: tabBar)
        
    }
    
    func setupBarItem(){
        let searchImage = UIImage(systemName: "magnifyingglass")
        let showMenuImage = UIImage(systemName: "equal.square.fill")
        
        let searchBarItem = UIBarButtonItem(image: searchImage, style: .plain, target: self, action: #selector(searchHandler))
        let showMenuBarItem = UIBarButtonItem(image: showMenuImage, style: .plain, target: self, action: #selector(searchHandler))
        searchBarItem.tintColor = UIColor.white
        showMenuBarItem.tintColor = UIColor.white
        navigationItem.rightBarButtonItems = [showMenuBarItem,searchBarItem]
    }
    
    @objc func searchHandler(){
        print("Click Search Button")
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.width - 20) * 9/16
        return CGSize(width: view.frame.width, height: height + 70)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

}


