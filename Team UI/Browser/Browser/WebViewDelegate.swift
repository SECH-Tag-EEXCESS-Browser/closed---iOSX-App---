//
//  WebViewDelegate.swift
//  Browser
//
//  Created by Andreas Ziemer on 16.10.15.
//  Copyright © 2015 SECH-Tag-EEXCESS-Browser. All rights reserved.
//

import UIKit

class WebViewDelegate: NSObject, UIWebViewDelegate {
    
    var regex = RegexForSech()
    var sechMaker = SechMaker()
    var mURL : String = ""
    var viewCtrl: ViewController!
    
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        
        let htmlHead = webView .stringByEvaluatingJavaScriptFromString("document.head.innerHTML")!
        
        let htmlBody = webView .stringByEvaluatingJavaScriptFromString("document.body.innerHTML")!
        
        let sech = sechMaker.getSechObjects(htmlHead, htmlBody: htmlBody)
        
        print(sech)        
    }
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print("error")
    }
}