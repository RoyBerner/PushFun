//
//  ViewController.swift
//  PushFun
//
//  Created by Roy Berner on 07/09/2018.
//  Copyright © 2018 Roy Berner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let url = URL(string: "https://fcm.googleapis.com/fcm/send") {
            var request = URLRequest(url: url)
            request.allHTTPHeaderFields = ["Content-Type":"application/json","Authorization":"key=AAAATPy0eik:APA91bEHmzauwW3caJEnL2_A9KPeUoTJZx-hY-HZ1W3q-NS3zXC0yBsOFXKAastaQ33eqg-t-DNfszkX8-Ys0JEK-QVuNrkkU-8uodfeuA15k0MjeBl3WcxDwAaqIaBCSfLGdR0bVFt1"]
            request.httpMethod = "POST"
            request.httpBody = "{\"to\":\"cf7iohmndyM:APA91bH5DQ9IrEiVCNzjqGfMyHwa6j122x0vcEPJRrnub5bCVsSviYa5Zr1hNVqucvWxoziWVRCvn_Y0wczSs_l7rRvGx14gl8ZA3hS1Q6vXRQbeGooBw51JcyPl3j_8ZNUjUQLjaLJZ\",\"notification\":{\"body\":\"THIS IS FROM HTTP\"}}".data(using: .utf8)
            
            URLSession.shared.dataTask(with: request, completionHandler: { (data, urlresponse, error) in
                if error != nil {
                    print(error!)
                }
                print((String(data: data!, encoding: .utf8)!))
            }).resume()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

