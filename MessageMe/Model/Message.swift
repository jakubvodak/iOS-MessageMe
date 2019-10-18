//
//  Message.swift
//  MessageMe
//
//  Created by Jakub Vodak on 18/10/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import Foundation

class Message {

    // MARK: - Variables

    let text: String
    let date: Date
    let sender: Person

    var dateString: String {
        get {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            return dateFormatter.string(from: date)
        }
    }

    var plainData: [String: Any] {
        get {
            return ["text": text,
                    "date": dateString,
                    "sender": sender.name]
        }
    }

    // MARK: - Object Lifecycle

    init(text: String, date: Date, sender: Person) {
        self.text = text
        self.date = date
        self.sender = sender
    }
}
