//
//  TirfuseeViewController.swift
//  HamburgerMenuBlog
//


import UIKit

class TirfuseeViewController: UIViewController {

    @IBOutlet weak var myTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        myTextView.isScrollEnabled = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTextView.isScrollEnabled = true
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
