//
//  SplashScreenVC.swift
//  Fashion
//
//  Created by Ahmed Yehia on 3/31/23.
//

import UIKit

class SplashScreenVC: ViewController {
    static let ID = String(describing: SplashScreenVC.self)
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginBtn(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: LogInVC.ID) as! LogInVC
        self.present(nextViewController, animated:true, completion:nil)
    }

    @IBAction func signUpBtn(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: SignUpVC.ID) as! SignUpVC
        self.present(nextViewController, animated:true, completion:nil)
    }
}
