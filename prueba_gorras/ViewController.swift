//
//  ViewController.swift
//  prueba_gorras
//
//  Created by Miguel Mexicano on 02/02/18.
//  Copyright © 2018 Miguel Mexicano. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtpass: UITextField!
    var util = Utils()
    var service:Service? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        service = Service()
        
       restGet(url: "https://api.bitso.com/v3/ticker/?book=eth_mxn")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func login(_ sender: Any) {
        if (txtname.text == "MIG" && txtpass.text == "123"){
            //util.alert(context: self, title: "Congratulations", message: "Login Correcto")
            UserDefaults.standard.set(txtname.text, forKey: "user")
            self.performSegue(withIdentifier: "first_segue", sender: self)
        }
        else{
            util.alert(context: self, title: "Error", message: "Nombre o password Invalido")
        }
    }
    
    
    func restGet(url: String){
        let endpoint = url
        
        guard let endpointUrl = URL(string: endpoint) else {
            return
        }
        
        do {
            
            
            var request = URLRequest(url: endpointUrl)
            request.httpMethod = "GET"
            //request.httpBody = data
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            
            
            let task = URLSession.shared.dataTask(with: request as URLRequest) {
                data,respons,error in
                
                do {
                    let result = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:AnyObject]
                    
                    print("Result",result!)
                    
                } catch {
                    print("Error -> \(error)")
                }
            }
            
            task.resume()
        }
    }
    
    
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "first_segue"){
            let vc:FirstViewController = segue.destination as! FirstViewController
           vc.name = txtname.text!
        }
    }*/
    
}

