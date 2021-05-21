//
//  ViewController.swift
//  IDNowTest
//
//  Created by Björn Konrad on 21.05.21.
//

import UIKit
import IDNowSDKCore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        IDNowSDK.shared.start(token: "token", preferredLanguage:"en", fromViewController: self, listener:{ (result: IDNowSDK.IdentResult, message: String) in
            if result == IDNowSDK.IdentResult.ERROR {
                self.showAlert(text: message)
            } else if result == IDNowSDK.IdentResult.FINISHED {

            }
        })
    }


}

