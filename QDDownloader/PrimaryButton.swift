//
//  PrimaryButton.swift
//  QDDownloader
//
//  Created by Stu Dobbie on 23/9/18.
//  Copyright © 2018 Quoll Designs. All rights reserved.
//

import UIKit

@IBDesignable
class PrimaryButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = tintColor
        tintColor = .white
        layer.cornerRadius = 8
    }

}
