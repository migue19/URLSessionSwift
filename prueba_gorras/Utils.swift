//
//  Utils.swift
//  prueba_gorras
//
//  Created by Miguel Mexicano on 02/02/18.
//  Copyright © 2018 Miguel Mexicano. All rights reserved.
//

import UIKit

class Utils: NSObject {
    func alert(context: ViewController, title: String, message: String) {
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        context.present(alert, animated: true, completion: nil)
    }

}
