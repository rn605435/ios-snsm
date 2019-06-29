//
//  UserDataViewController.swift
//  HamburgerMenuBlog
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
        let savedBoatBrand = UserDefaults.standard.object(forKey: "BoatBrand")
        let savedBoatLength = UserDefaults.standard.object(forKey: "BoatLength")
        let savedBoatWidth = UserDefaults.standard.object(forKey: "BoatWidth")
        let savedBoatDraught = UserDefaults.standard.object(forKey: "BoatDraught")
        let savedBoatMatriculation = UserDefaults.standard.object(forKey: "BoatMatriculation")
        let savedBoatMarina = UserDefaults.standard.object(forKey: "BoatMarina")
        let savedBoatContact = UserDefaults.standard.object(forKey: "BoatContact")
        let savedBoatPlace = UserDefaults.standard.object(forKey: "BoatPlace")
        let savedBoatPlaceNbr = UserDefaults.standard.object(forKey: "BoatPlaceNbr")
        let savedBoatInsurance = UserDefaults.standard.object(forKey: "BoatInsurance")
        let savedBoatInsurancePolice = UserDefaults.standard.object(forKey: "BoatInsurancePolice")
        
        if let boatname = savedBoatName as? String {
            boatName.text = boatname
        }
        if let boatbrand = savedBoatBrand as? String {
            boatBrand.text = boatbrand
        }
        if let boatlength = savedBoatLength as? String {
            boatLength.text = boatlength
        }
        if let boatwidth = savedBoatWidth as? String {
            boatWidth.text = boatwidth
        }
        if let boatdraught = savedBoatDraught as? String {
            boatDraught.text = boatdraught
        }
        if let boatmatriculation = savedBoatMatriculation as? String {
            boatMatriculation.text = boatmatriculation
        }
        if let boatmarina = savedBoatMarina as? String {
            boatMarina.text = boatmarina
        }
        if let boatcontact = savedBoatContact as? String {
            boatContact.text = boatcontact
        }
        if let boatplace = savedBoatPlace as? String {
            boatPlace.text = boatplace
        }
        if let boatplacenbr = savedBoatPlaceNbr as? String {
            boatPlaceNbr.text = boatplacenbr
        }
        if let boatinsurance = savedBoatInsurance as? String {
            boatInsurance.text = boatinsurance
        }
        if let boatinsurancepolice = savedBoatInsurancePolice as? String {
            boatInsurance.text = boatinsurancepolice
        }
    }
    
    @IBAction func saveBtn(_ sender: UIButton) {
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 105, y: self.view.frame.size.height-100, width: 200, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.font = UIFont(name: "Montserrat-Light", size: 10.0)
        toastLabel.text = "Sauvegarde terminée!"
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
        UserDefaults.standard.set(boatName.text, forKey: "BoatName")
        UserDefaults.standard.set(boatBrand.text, forKey: "BoatBrand")
        UserDefaults.standard.set(boatLength.text, forKey: "BoatLength")
        UserDefaults.standard.set(boatWidth.text, forKey: "BoatWidth")
        UserDefaults.standard.set(boatDraught.text, forKey: "BoatDraught")
        UserDefaults.standard.set(boatMatriculation.text, forKey: "BoatMatriculation")
        UserDefaults.standard.set(boatMarina.text, forKey: "BoatMarina")
        UserDefaults.standard.set(boatContact.text, forKey: "BoatContact")
        UserDefaults.standard.set(boatPlace.text, forKey: "BoatPlace")
        UserDefaults.standard.set(boatPlaceNbr.text, forKey: "BoatPlaceNbr")
        UserDefaults.standard.set(boatInsurance.text, forKey: "BoatInsurance")
        UserDefaults.standard.set(boatInsurancePolice.text, forKey: "BoatInsurancePolice")
        
        
    }
    @IBAction func deleteBtn(_ sender: UIButton) {
        UserDefaults.standard.removeObject(forKey: "BoatName")
        UserDefaults.standard.removeObject(forKey: "BoatBrand")
        UserDefaults.standard.removeObject(forKey: "BoatLength")
        UserDefaults.standard.removeObject(forKey: "BoatWidth")
        UserDefaults.standard.removeObject(forKey: "BoatDraught")
        UserDefaults.standard.removeObject(forKey: "BoatMatriculation")
        UserDefaults.standard.removeObject(forKey: "BoatMarina")
        UserDefaults.standard.removeObject(forKey: "BoatContact")
        UserDefaults.standard.removeObject(forKey: "BoatPlace")
        UserDefaults.standard.removeObject(forKey: "BoatPlaceNbr")
        UserDefaults.standard.removeObject(forKey: "BoatInsurance")
        UserDefaults.standard.removeObject(forKey: "BoatInsurancePolice")
    }
    
    
}
