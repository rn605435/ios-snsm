//
//  ViewController.swift
//  HamburgerMenuBlog
//


import UIKit

class ViewController: UIViewController, UITabBarDelegate {

    @IBOutlet var leadingC: NSLayoutConstraint!
    @IBOutlet var trailingC: NSLayoutConstraint!
    
    @IBOutlet var ubeView: UIView!
    
    var hamburgerMenuIsVisible = false
    var viewController1: UIViewController?
    var viewController2: UIViewController?

    
    @IBAction func hamburgerBtnTapped(_ sender: Any) {
        //if the hamburger menu is NOT visible, then move the ubeView back to where it used to be
        if !hamburgerMenuIsVisible {
            leadingC.constant = 350
            trailingC.constant = -350
            
            //1
            hamburgerMenuIsVisible = true
        } else {
        //if the hamburger menu IS visible, then move the ubeView back to its original position
            leadingC.constant = 0
            trailingC.constant = 0
            
            //2
            hamburgerMenuIsVisible = false
        }
        
        UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) { (animationComplete) in
        }
    }
    
    @IBAction func btnSnsmUrl(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.snsm.org")! as URL, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler: nil)
        
    }
    
    @IBAction func btnSoutenir(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://don.snsm.org")! as URL, options: convertToUIApplicationOpenExternalURLOptionsKeyDictionary([:]), completionHandler: nil)
    }
    
    
    @IBOutlet weak var mainTabBar: UITabBar!
    
    
    
    @IBAction func btnCoordinates(_ sender: UIButton) {
        let homeView = self.storyboard?.instantiateViewController(withIdentifier: "CoordinatesStoryboard") as! CoordinatesViewController
        self.navigationController?.pushViewController(homeView, animated: true)
        
    }
    
    @IBAction func btnUser(_ sender: UIButton) {
        let homeView = self.storyboard?.instantiateViewController(withIdentifier: "UserDataStoryboard") as! UserDataViewController
        self.navigationController?.pushViewController(homeView, animated: true)
    }
    
    @IBAction func btnWeather(_ sender: UIButton) {
        let homeView = self.storyboard?.instantiateViewController(withIdentifier: "WeatherStoryboard") as! WeatherViewController
        self.navigationController?.pushViewController(homeView, animated: true)
    }
    
    @IBAction func btnRescue(_ sender: UIButton) {
        let homeView = self.storyboard?.instantiateViewController(withIdentifier: "RescueStoryboard") as! RescueViewController
        self.navigationController?.pushViewController(homeView, animated: true)
    }
    
    override func viewDidLoad() {
        ubeView.addBackground()



        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}


// Helper function inserted by Swift 4.2 migrator.
fileprivate func convertToUIApplicationOpenExternalURLOptionsKeyDictionary(_ input: [String: Any]) -> [UIApplication.OpenExternalURLOptionsKey: Any] {
	return Dictionary(uniqueKeysWithValues: input.map { key, value in (UIApplication.OpenExternalURLOptionsKey(rawValue: key), value)})
}
