//
//  ViewController.swift
//  tse
//
//  Created by admin on 1/2/2563 BE.
//  Copyright © 2563 purinat. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, CreateStoryDelegate{
    
    var StoryName : [String] = ["Hello", "Hi", "Yes", "No"]
    var StoryContext : [String] = ["This is just the example", "This is other examplee", "Yes whatt?", "No? Whyyyyyy"]
    
    @IBOutlet weak var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StoryName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuse")!
        
        cell.textLabel?.text = StoryName[indexPath.row]
        cell.detailTextLabel?.text = StoryContext[indexPath.row]
        return cell
        
            
    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("[ Menu Story View ] ");
        tableView.dataSource = self
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigationController?.navigationBar.barStyle = .black;
        
    }
    
    func setContent(name: String,context: String){
        
        StoryName.append(name)
        StoryContext.append(context)
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "createStorySG"){
            let createVC = segue.destination as! CreateStoryViewController
            createVC.delegate = self
        }
    }
    
    
    



}

