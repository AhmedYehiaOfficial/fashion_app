//
//  LogInVC.swift
//  Fashion
//
//  Created by Ahmed Yehia on 3/30/23.
//

import UIKit
import Alamofire
import SwiftyJSON

class LogInVC: ViewController {
    static let ID = String(describing: LogInVC.self)

    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func loginBtn(_ sender: Any) {
        
        guard let enteredUserName = emailTF.text else{return}
        guard let enteredPassword = passwordTF.text else{return}
        
        login(email: enteredUserName, password: enteredPassword)
        
        let namestoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = namestoryboard.instantiateViewController(withIdentifier: HomeVC.ID) as! HomeVC
            self.navigationController?.pushViewController(vc, animated: true)
        
    }
    // MARK: - Login
    func login(email:String, password:String) {
       
        let params = ["email":email,"password":password]
        
        let url = "\(EndPoints.BASE_URL)\(EndPoints.LOGIN)"
        
        AF.request(url, method: .post, parameters: params).responseDecodable(of: Login.self){res in
            
            if res.response?.statusCode == 200{
                
                switch res.result{
                case .success(let user):
                    UserDefaults.standard.set(user.data.token, forKey: "token")
                    print("user email: \(user.data.email)")
                    
                // save token in user defaults.........
                case .failure(let error):
                    print("Failllleeeeeeeeeeeeeeeed")
                    print("error\(error)")
                }
            }else{
                return
            }
        }
        
    }
   
}
