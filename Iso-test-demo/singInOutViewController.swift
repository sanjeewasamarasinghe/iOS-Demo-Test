//
//  singInOutViewController.swift
//  Iso-test-demo
//
//  Created by USER on 4/18/19.
//  Copyright © 2019 USER. All rights reserved.
//

import UIKit
import  Firebase
import FirebaseAuth

class singInOutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SingOut(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do{
            try firebaseAuth.signOut()
            self.dismiss(animated: true, completion:    nil)
            
        }catch let signOutError as NSError
        {
            print ("Eror signing out: %@", signOutError)
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
