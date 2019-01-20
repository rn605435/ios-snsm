//
//  SoutenirViewController.swift
//  HamburgerMenuBlog
//
//  Created by Dazinieras on 09/12/2018.
//  Copyright © 2018 Erica Millado. All rights reserved.
//

import UIKit
import WebKit

class SoutenirViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var WebView: UIWebView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    
    func webViewDidStartLoad(_ webView: UIWebView){// show indicator
        activity.isHidden = false
        activity.startAnimating()
    }
    func webViewDidFinishLoad(_ webView: UIWebView){// hide indicator
        activity.isHidden = true
        activity.stopAnimating()
    }
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) { // hide indicator
        activity.isHidden = true
        activity.stopAnimating()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://don.snsm.org")
        let request = URLRequest(url: url!)
        WebView.delegate = self
        WebView.loadRequest(request)
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
