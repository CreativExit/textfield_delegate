//
//  ViewController.swift
//  Test
//
//  Created by Christian Gonzalez on 11/1/16.
//  Copyright © 2016 Christian Gonzalez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    var textFields:[UITextField] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text1.delegate = self
        text2.delegate = self
        
        
        textFields = [text1, text2]
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        print(textField.tag)
        
        if(textField.tag == 2){
            print("Text2")
            text2.resignFirstResponder()
            openDialog()
        }
    }
    
    
    func openDialog(){
        print("Open Dialog hide Keyboard")
    }
    
}

