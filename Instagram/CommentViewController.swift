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

class CommentViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var commentUserName: UITextField!
    @IBOutlet weak var commentText: UITextView!
    
    
    @IBOutlet weak var commentPostButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commentUserName.delegate = self
        
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
    
    // セル内のコメント投稿ボタンがタップされた時に呼ばれるメソッド
    @objc func commentPostButton(_ sender: UIButton, forEvent event: UIEvent) {
        print("DEBUG_PRINT: コメント投稿ボタンがタップされました。")
        if commentText.text == nil {
            return
        }
        else {
            
        }
        
    }
    
    @IBAction func cancellButton(_ sender: Any) {
        // 画面を閉じる
        dismiss(animated: true, completion: nil)
    }
    
}
