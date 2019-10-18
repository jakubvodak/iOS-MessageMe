//
//  MessagingViewController.swift
//  MessageMe
//
//  Created by Jakub Vodak on 17/10/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit
import Firebase

class MessagingViewController: UIViewController, UITableViewDataSource {

    // MARK: - Variables

    var myself: Person?
    private var messages = [Message]()

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var tableView: UITableView!

    // MARK: - Object Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = myself?.name
        tableView.estimatedRowHeight = 70
        tableView.rowHeight = UITableView.automaticDimension
    }

    // MARK: - Functions
    
    @IBAction func closeAction() {
        dismiss(animated: true)
    }

    @IBAction func sendAction() {

        if let text = textField.text,
            let myself = myself {

            //send message
            let message = Message(text: text, date: Date(), sender: myself)
            //messages.append(message)
            sendData(message.plainData)

            //clear input
            textField.text = ""

            //reload table data
            //tableView.reloadData()
        }
    }

    // MARK: - Table View

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return messages.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell

        let message = messages.reversed()[indexPath.row]

        cell.lblName.text = message.sender.name
        cell.lblText.text = message.text
        cell.lblTime.text = message.dateString

        return cell
    }

    // MARK: - Firebase

    func sendData(_ data: [String: Any]) {

        print(data)

        let trigger = Database.database().reference(withPath: "Messages").childByAutoId()
        trigger.setValue(data)
    }
}
