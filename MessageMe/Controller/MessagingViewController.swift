//
//  MessagingViewController.swift
//  MessageMe
//
//  Created by Jakub Vodak on 17/10/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class MessagingViewController: UIViewController {

    // MARK: - Variables

    var myself: Person?

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lblName: UILabel!

    // MARK: - Object Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = myself?.name
    }

    // MARK: - Functions
    
    @IBAction func closeAction() {
        dismiss(animated: true)
    }

    @IBAction func sendAction() {

        if let text = textField.text {

            //send message
            print(text)

            //clear input
            textField.text = ""
        }
    }

}
