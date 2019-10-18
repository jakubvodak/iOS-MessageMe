//
//  NameViewController.swift
//  MessageMe
//
//  Created by Jakub Vodak on 17/10/2019.
//  Copyright © 2019 STRV. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {

    // MARK: - Variables

    @IBOutlet weak var textInput: UITextField!

    // MARK: - Functions

    @IBAction func goAction() {
        //Zahajeni chatu
        if let jmeno = textInput.text,
               jmeno.count >= 3 {

            let myself = Person(name: jmeno)
            startChat(myself)
        }
        else {
            displayError()
        }
    }

    func startChat(_ myself: Person) {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)

        if let vc: MessagingViewController = storyboard.instantiateViewController(withIdentifier: "MessagingViewController") as? MessagingViewController {

            vc.myself = myself

            self.present(vc, animated: true, completion: nil)
        }
    }

    func displayError() {
        let alert = UIAlertController(title: "Error", message: "Chybne jmeno", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
}
