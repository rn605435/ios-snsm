//
//  EchouementViewController.swift
//  HamburgerMenuBlog
//
//  Created by Dazinieras on 08/12/2018.
//  Copyright © 2018 Erica Millado. All rights reserved.
//

import UIKit

class EchouementViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Echouement"
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
