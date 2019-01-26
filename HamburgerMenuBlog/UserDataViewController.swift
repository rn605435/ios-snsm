//
//  UserDataViewController.swift
//  HamburgerMenuBlog
//
//  Created by Dazinieras on 16/12/2018.
//  Copyright © 2018 Erica Millado. All rights reserved.
//

import UIKit
import IQKeyboardManagerSwift

class UserDataViewController: UIViewController {

    @IBOutlet weak var boatName: UITextField!
    @IBOutlet weak var boatBrand: UITextField!
    @IBOutlet weak var boatLength: UITextField!
    @IBOutlet weak var boatWidth: UITextField!
    @IBOutlet weak var boatDraught: UITextField!
    @IBOutlet weak var boatMatriculation: UITextField!
    @IBOutlet weak var boatMarina: UITextField!
    @IBOutlet weak var boatContact: UITextField!
    @IBOutlet weak var boatPlace: UITextField!
    @IBOutlet weak var boatPlaceNbr: UITextField!
    @IBOutlet weak var boatInsurance: UITextField!
    @IBOutlet weak var boatInsurancePolice: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        IQKeyboardManager.shared.enable = true

        let savedBoatName = UserDefaults.standard.object(forKey: "BoatName")
        if let boatname = savedBoatName as? String {
            boatName.text = boatname
        }
    }
    
    @IBAction func saveBtn(_ sender: UIButton) {
        UserDefaults.standard.set(boatName.text, forKey: "BoatName")
        
    }
    @IBAction func deleteBtn(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "BoatName")
    }
    
    
}
