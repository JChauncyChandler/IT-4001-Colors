//
//  ColorDetailViewController.swift
//  ColorsTable
//
//  Created by Chandler, Jackson C. (MU-Student) on 10/27/17.
//  Copyright © 2017 Chandler, Jackson C. (MU-Student). All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color: Color?
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = color?.name
        self.view.backgroundColor = color?.uiColor
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
