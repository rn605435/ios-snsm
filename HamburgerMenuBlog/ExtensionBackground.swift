//
//  ExtensionBackground.swift
//  HamburgerMenuBlog
//
//  Created by Dazinieras on 09/12/2018.
//  Copyright © 2018 Erica Millado. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func addBackground() {
        // screen width and height:
        let width = UIScreen.main.bounds.size.width
        let height = UIScreen.main.bounds.size.height
        
        let imageViewBackground = UIImageView(frame: CGRect(x: 0, y: 0,width: width,height: height))
        imageViewBackground.image = UIImage(named: "snsmbackground.jpg")
        
        // you can change the content mode:
        imageViewBackground.contentMode = UIViewContentMode.scaleAspectFill
        
        self.addSubview(imageViewBackground)
        self.sendSubview(toBack: imageViewBackground)
    }}
