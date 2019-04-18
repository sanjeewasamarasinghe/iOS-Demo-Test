//
//  LoginViewController.swift
//  Iso-test-demo
//
//  Created by USER on 4/4/19.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase


class LoginViewController: UIViewController {

    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassWord: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SingIn(_ sender: Any) {
        self.performSegue(withIdentifier: "singIn", sender: nil)
    }
    
    @IBAction func LogIn(_ sender: Any) {
        Auth.auth().signIn(withEmail: self.txtEmail.text!,password:self.txtPassWord.text!){
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

        
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
