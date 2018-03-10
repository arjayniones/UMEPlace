//
//  HalfRoundButtons.swift
//  UMEPlace
//
//  Created by Arjay Niones on 26/2/18.
//  Copyright © 2018 Arjay Niones. All rights reserved.
//

import Foundation
import UIKit



@IBDesignable class HalfRoundButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    override func prepareForInterfaceBuilder() {
        sharedInit()
    }
    
   
    
    func refreshCorners(value: CGFloat) {
        layer.cornerRadius = value
    }
    func sharedInit() {
        refreshCorners(value: cornerRadius)
    }
    
    
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            refreshCorners(value: cornerRadius)
        }
        
    }
    
}
