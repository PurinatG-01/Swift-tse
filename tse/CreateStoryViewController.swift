//
//  CreateStoryViewController.swift
//  tse
//
//  Created by admin on 3/2/2563 BE.
//  Copyright © 2563 purinat. All rights reserved.
//

import UIKit

protocol CreateStoryDelegate : NSObjectProtocol{
    func setContent(name: String, context: String)
}


class CreateStoryViewController: UIViewController {

    weak var delegate : CreateStoryDelegate?
    @IBOutlet weak var storyName: UITextField!
    @IBOutlet weak var storyText: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print("[ Create Story View ] ");
        
        
        
    }
    
    @IBAction func clickSubmit(_ sender: Any) {
        
//        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
//
//        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "View1") as UIViewController
//
        print("[ Submit Button Pressed ]")
        if(storyName.text != "")
        {
            
//           var mainViewController:MenuViewController?
//            
//            mainViewController?.setContent(name: storyName.text!, context: "")
//            
//            print(mainViewController?.Content as Any)
            
            
            if(storyText.text != ""){
                delegate?.setContent(name: storyName.text!, context: storyText.text!)
            }else{
                delegate?.setContent(name: storyName.text!, context: "")
            }
            
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
            
        } else {
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
