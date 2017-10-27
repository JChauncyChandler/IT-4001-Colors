//
//  ColorsTableViewController.swift
//  ColorsTable
//
//  Created by Chandler, Jackson C. (MU-Student) on 10/22/17.
//  Copyright © 2017 Chandler, Jackson C. (MU-Student). All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var colorsArray = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    @IBOutlet weak var colorTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colorsArray.count;
    }
  /*  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.colorsArray.count
    }*/
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath as IndexPath)
        cell.textLabel?.text = colorsArray[indexPath.item]
        switch colorsArray[indexPath.item] {
        case "red":
            cell.backgroundColor = UIColor.red
        case "orange":
            cell.backgroundColor = UIColor.orange
        case "yellow":
            cell.backgroundColor = UIColor.yellow
        case "green":
            cell.backgroundColor = UIColor.green
        case "blue":
            cell.backgroundColor = UIColor.blue
        case "purple":
            cell.backgroundColor = UIColor.purple
        case "brown":
            cell.backgroundColor = UIColor.brown
        default:
            break
        }
        return cell
    }

}
