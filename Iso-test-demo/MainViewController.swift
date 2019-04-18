//
//  MainViewController.swift
//  Iso-test-demo
//
//  Created by USER on 4/4/19.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn

class MainViewController: UIViewController ,GIDSignInUIDelegate{
   
    override func viewWillAppear(_ animated: Bool) {
        AppTempData.userHandleApp=Auth.auth().addStateDidChangeListener{(auth,user)in
            if user == nil{
                self.performSegue(withIdentifier: "MainNext", sender: nil)
            }else{
                self.performSegue(withIdentifier: "SingIn", sender: nil)
            }
    }
    
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        Auth.auth().removeStateDidChangeListener(AppTempData.userHandleApp!)
    }
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnSingIn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        GIDSignIn.sharedInstance()?.uiDelegate = self
    }
    
    
    
    @IBAction func singIn(_ sender: Any) {
        self.performSegue(withIdentifier: "SingIn", sender: nil)
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
