//
//  ViewController.swift
//  gunGame
//
//  Created by Aidan Maldonado on 12/27/18.
//  Copyright © 2018 Aidan Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Game Variables
    var ammoCount = 7
    var kills = 0
    var ammoTotal = 100
    
    //Labels
    @IBOutlet weak var ammoCountLabel: UILabel!
    @IBOutlet weak var killsLabel: UILabel!
    @IBOutlet weak var ammoTotalLabel: UILabel!
    @IBOutlet weak var gunButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }
    
    func updateLabels() {
        ammoCountLabel.text = String(ammoCount)
        killsLabel.text = "Kills: " + String(kills)
        ammoTotalLabel.text = "Ammo: " + String(ammoTotal)
    }
    
    @IBAction func shootGun() {
        if ammoCount >= 1 && ammoTotal >= 1 {
            ammoCount -= 1
            ammoTotal -= 1
            kills += 1
        }
        updateLabels()
    }
    
    @IBAction func reloadGun() {
        ammoCount = 7
        updateLabels()
    }
    
    @IBAction func getMoreAmmo() {
        ammoTotal += 10
    }
    
    @IBAction func changeGun() {
        
    }

}

