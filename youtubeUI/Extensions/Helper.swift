//
//  Helper.swift
//  youtubeUI
//
//  Created by ercan on 19.02.2020.
//  Copyright © 2020 simitci. All rights reserved.
//

import UIKit

extension UIView{
    func withFormat(format:String, views:UIView...){
        var formatViews = [String:UIView]()
        
        for (index,view) in views.enumerated(){
            let key:String = "v\(index)"
            formatViews[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: nil, views: formatViews))
    }
}
