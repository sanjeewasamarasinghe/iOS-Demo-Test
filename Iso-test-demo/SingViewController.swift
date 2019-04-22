//
//  SingViewController.swift
//  Iso-test-demo
//
//  Created by USER on 4/18/19.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SingViewController: UIViewController {

   
    @IBOutlet weak var emailtxt: UITextField!
    @IBOutlet weak var passwordtxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func singInLog(_ sender: Any) {
        Auth.auth().createUser(withEmail: self.emailtxt.text!, password: self.passwordtxt.text! ){
            (user,error)in
            if error != nil {
                let alert = UIAlertController(title: "Singin Error", message: error?.localizedDescription, preferredStyle: .alert)
                alert.addAction(UIAlertAction(title:"Click",style:.default,handler:nil))
                self.present(alert, animated: true, completion: nil)
                
            }else{
                self.dismiss(animated: true, completion: nil)
            }
            
        }
        
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
