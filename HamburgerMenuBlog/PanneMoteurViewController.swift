//
//  PanneMoteurViewController.swift
//  HamburgerMenuBlog
//


import UIKit

class PanneMoteurViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnCall(_ sender: UIButton) {
        let url = URL(string: "tel://196")!
        UIApplication.shared.open(url)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
