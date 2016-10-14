//
//  ViewController.swift
//  SectionedEmojiTableAdvanced
//
//  Created by yodyodsmall on 10/14/16.
//  Copyright © 2016 yuryg. All rights reserved.
//

import UIKit

let flowersArray = ["🌻","🌺","🌹","🌷","🌸"]
let insectArray = ["🐌","🐞","🐝","🐛","🕷"]
let birdsArray = ["🐦","🐧","🐔","🐤","🐣"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let mySection = indexPath.section
        
        if mySection == 0{
         
            let myCell = tableView.dequeueReusableCell(withIdentifier: "blueCell")
            return myCell!
        }
        else if mySection == 1{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "greenCell")
            return myCell!
            
        }  else if mySection == 2{
            let myCell = tableView.dequeueReusableCell(withIdentifier: "yellowCell")
            return myCell!
        
        } else {
            
            let myCell = tableView.dequeueReusableCell(withIdentifier: "errorCell")
            return myCell!
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat(70)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let mySection = section
        
        if mySection == 0 {
            return "Flower"
        } else if mySection == 1{
            return "Insects"
        } else if mySection == 2 {
            return "Birds"
        } else {
        return "Header"
        }
    }

    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        let title = view as! UITableViewHeaderFooterView
        title.textLabel?.font = UIFont(name: "Futura", size: 60)
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return CGFloat(10)
    }
    
    

}



