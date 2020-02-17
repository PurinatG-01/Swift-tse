//
//  RoundedView.swift
//  tse
//
//  Created by admin on 13/2/2563 BE.
//  Copyright © 2563 purinat. All rights reserved.
//

import UIKit

class RoundedView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
           didSet {
               layer.cornerRadius = cornerRadius
               layer.masksToBounds = cornerRadius > 0
           }
       }
       
       @IBInspectable var borderWidth: CGFloat = 0 {
           didSet {
               layer.borderWidth = borderWidth
           }
       }
       
       @IBInspectable var borderColor: UIColor? {
           didSet {
               layer.borderColor = borderColor?.cgColor
           }
       }

}
