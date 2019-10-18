//
//  MessageTableViewCell.swift
//  MessageMe
//
//  Created by Jakub Vodak on 18/10/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class MessageTableViewCell: UITableViewCell {

    // MARK: - Outlets

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblText: UILabel!
    @IBOutlet weak var lblTime: UILabel!

    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
