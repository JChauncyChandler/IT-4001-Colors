//
//  ColorsTableViewController.swift
//  ColorsTable
//
//  Created by Chandler, Jackson C. (MU-Student) on 10/22/17.
//  Copyright © 2017 Chandler, Jackson C. (MU-Student). All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var colors = [Color(name: "red", uiColor: UIColor.red),
                  Color(name: "orange", uiColor: UIColor.orange),
                  Color(name: "yellow", uiColor: UIColor.yellow),
                  Color(name: "green", uiColor: UIColor.green),
                  Color(name: "blue", uiColor: UIColor.blue),
                  Color(name: "purple", uiColor: UIColor.purple),
                  Color(name: "brown", uiColor: UIColor.brown)]
    
    @IBOutlet weak var colorTable: UITableView!
    
    @IBOutlet weak var colorsTableView: UITableView!
    
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
        return self.colors.count;
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        
        cell.textLabel?.text = color.name
        cell.backgroundColor = color.uiColor
        cell.selectionStyle = .none
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
        let row = colorsTableView.indexPathForSelectedRow?.row
        {
            destination.color = colors[row]
      
        }
    }
}
