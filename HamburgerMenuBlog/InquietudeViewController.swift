//
//  InquietudeViewController.swift
//  HamburgerMenuBlog
//
//  Created by nicolas on 28/01/2019.
//  Copyright © 2019 Erica Millado. All rights reserved.
//

import UIKit

class InquietudeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnCall(_ sender: Any) {
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
