//
//  TitleLabel.swift
//  MessageMe
//
//  Created by Jakub Vodak on 17/10/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class TitleLabel: UILabel {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        applyAppearance()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        applyAppearance()
    }

    func applyAppearance() {
        self.textColor = .red
    }
}
