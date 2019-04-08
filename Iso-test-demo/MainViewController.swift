//
//  MainViewController.swift
//  Iso-test-demo
//
//  Created by USER on 4/4/19.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var btnNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnNext(_ sender: Any) {
       self.performSegue(withIdentifier: "MainNext", sender: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
