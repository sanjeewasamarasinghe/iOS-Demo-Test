//
//  Login2ViewController.swift
//  Iso-test-demo
//
//  Created by USER on 4/19/19.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class Login2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var emailtxt: UITextField!
    @IBOutlet weak var passwordtxt: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func btnLogIn(_ sender: Any) {
        Auth.auth().signIn(withEmail: self.emailtxt.text!,password:self.passwordtxt.text!){
        [weak self] user, error in guard let strongSelf = self else {return}
        //...
        if error != nil {
        let alert = UIAlertController(title: "login Error", message: error?.localizedDescription, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Click",style:.default,handler:nil))
         strongSelf.present(alert, animated: true, completion: nil)
        
        }else{
        strongSelf.dismiss(animated: true, completion: nil)
            }
            
        }
    }
    @IBAction func btnSingIn(_ sender: Any) {
          self.performSegue(withIdentifier: "SingIn", sender: nil)
    }
}
