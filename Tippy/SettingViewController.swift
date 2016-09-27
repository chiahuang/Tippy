//
//  SettingViewController.swift
//  Tippy
//
//  Created by Kay Lab on 9/25/16.
//  Copyright © 2016 Chia Huang. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet weak var defaultTip: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        defaultTip.selectedSegmentIndex = defaults.integerForKey("defaultTip")
        print(defaults.integerForKey("defaultTip"))
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onDefault(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTip.selectedSegmentIndex, forKey: "defaultTip")
        print("save")
        defaults.synchronize()
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
