//
//  FirstViewController.swift
//  prueba_gorras
//
//  Created by Miguel Mexicano on 02/02/18.
//  Copyright © 2018 Miguel Mexicano. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var lblname: UILabel!
    var name:String = ""
    
    override func viewDidLoad() {
        name = UserDefaults.standard.string(forKey: "user")!
        super.viewDidLoad()
        lblname.text = name

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
