//
//  ViewController.swift
//  测试toolbar增加子视图
//
//  Created by qi on 15/9/30.
//  Copyright © 2015年 im.qhf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myToolBar: UIToolbar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        @IBAction func onSearch(sender: AnyObject) {
        }
        // Do any additional setup after loading the view, typically from a nib.
        let button=UIButton(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 44))
        button.backgroundColor=UIColor.blueColor()
        
        button.setTitle("测试按钮", forState: UIControlState.Normal)
        
        button.addTarget(self, action: "onButton", forControlEvents: UIControlEvents.TouchUpInside)
        myToolBar.addSubview(button)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onButton(){
        let alert=UIAlertController(title: "点击了按钮", message: "不错呦!", preferredStyle: UIAlertControllerStyle.Alert)
        let action=UIAlertAction(title: "好的", style: UIAlertActionStyle.Default, handler: nil)
        alert.addAction(action)
        self.presentViewController(alert, animated: true, completion: nil)
    }

}

