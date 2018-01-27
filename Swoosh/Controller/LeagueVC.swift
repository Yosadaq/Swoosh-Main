//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Yosadaq Esparza on 1/27/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func Next(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }

}
