//
//  CommentViewController.swift
//  Instagram
//
//  Created by 高野翔 on 2018/08/30.
//  Copyright © 2018年 高野翔. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import SVProgressHUD

class CommentViewController: UIViewController {
    
    @IBOutlet weak var commentUserName: UITextField!
    @IBOutlet weak var commnetText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = Auth.auth().currentUser?.displayName
        commentUserName.text = "\(name!)"
        print(commentUserName)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
