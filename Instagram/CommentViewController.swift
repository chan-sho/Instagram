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
    @IBOutlet weak var commentText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let name = Auth.auth().currentUser?.displayName
        commentUserName.text = "\(name!)"
        commentUserName.isEnabled = false
        
        // Check^^
        print(commentUserName)
        
        // 枠のカラー
        commentUserName.layer.borderColor = UIColor.black.cgColor
        // 枠の幅
        commentUserName.layer.borderWidth = 1.0
        // 枠を角丸にする場合
        commentUserName.layer.cornerRadius = 10.0
        commentUserName.layer.masksToBounds = true
        
        // 枠のカラー
        commentText.layer.borderColor = UIColor.black.cgColor
        // 枠の幅
        commentText.layer.borderWidth = 1.0
        // 枠を角丸にする場合
        commentText.layer.cornerRadius = 10.0
        commentText.layer.masksToBounds = true
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
