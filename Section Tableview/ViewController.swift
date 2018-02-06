//
//  ViewController.swift
//  Section Tableview
//
//  Created by Kelvin Tan on 2/6/18.
//  Copyright © 2018 Kelvin Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var sectionHeader: Array<String> = ["Fruits","Vegetable","Snacks"]
    var itemSection: Array<Array<String>> = [["Apple","Orange","Mango"], ["Cabbage","Tomatoes","Carrot","Cucumber","Spinach","Broccoli"] , ["Lays","Pringles","Pop Corn"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sectionHeader.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.itemSection[section].count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.sectionHeader[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = self.itemSection[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = item
        return cell
    }
    


}

