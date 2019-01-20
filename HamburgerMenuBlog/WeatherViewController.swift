//
//  WeatherViewController.swift
//  HamburgerMenuBlog
//
//  Created by Dazinieras on 16/12/2018.
//  Copyright © 2018 Erica Millado. All rights reserved.
//

import UIKit
import WebKit

class WeatherViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    @IBOutlet weak var WebView: UIWebView!
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
        let url = URL(string: "http://www.meteofrance.com/previsions-meteo-marine/cotes")
        let request = URLRequest(url: url!)
        WebView.delegate = self
        WebView.loadRequest(request)
    }
    


}
