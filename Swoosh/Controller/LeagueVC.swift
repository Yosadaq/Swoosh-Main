//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Yosadaq Esparza on 1/27/18.
//  Copyright © 2018 Y.M. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var Next: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()

    }
    @IBAction func OnCoedtapped(_ sender: Any) {
        selectLeague(LeagueType: "Coed")
        
    }
    @IBAction func OnMensTapped(_ sender: Any) {
        selectLeague(LeagueType: "Mens")
        
    }
    @IBAction func OnWomensTapped(_ sender: Any) {
        selectLeague(LeagueType: "Womens")
        
    }
    
    @IBAction func Next(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    func selectLeague(LeagueType: String) {
    player.desiredLeague = LeagueType
    Next.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}
