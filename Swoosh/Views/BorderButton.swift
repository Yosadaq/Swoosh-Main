//
//  BorderButton.swift
//  Swoosh
//
//  Created by Yosadaq Esparza on 1/25/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
    }


}
