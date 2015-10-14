//
//  ViewController.swift
//  TestSearchMap
//
//  Created by qi on 15/10/14.
//  Copyright © 2015年 im.qhf. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var text: UITextField!

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!

    @IBAction func onSearchButton(sender: AnyObject) {
        let localSearchRequest=MKLocalSearchRequest()
        localSearchRequest.naturalLanguageQuery="大望路"
        let localSearch=MKLocalSearch(request: localSearchRequest)
        
        localSearch.startWithCompletionHandler { (res:MKLocalSearchResponse?, error:NSError?) -> Void in
            print(res)
            print(error)
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

