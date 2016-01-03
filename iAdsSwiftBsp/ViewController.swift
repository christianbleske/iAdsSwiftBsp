//
//  ViewController.swift
//  iAdsSwiftBsp
//
//  Created by Christian Bleske on 29.11.15.
//  Copyright © 2015 Christian Bleske. All rights reserved.
//

import UIKit
import iAd

class ViewController: UIViewController, ADBannerViewDelegate {

    @IBOutlet var iAdBannerView: ADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //iAdBannerView = ADBannerView(adType: .MediumRectangle)
        iAdBannerView = ADBannerView(adType: .Banner)
        iAdBannerView.delegate = self
        iAdBannerView.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        print("bannerViewDidLoadAd")
        iAdBannerView.hidden = false
    }
    
    func bannerView(banner: ADBannerView!, didFailToReceiveAdWithError error: NSError!) {
        print("didFailToReceiveAdWithError");
        iAdBannerView.hidden = true
    }
    
    func bannerViewActionShouldBegin(banner: ADBannerView!, willLeaveApplication willLeave: Bool) -> Bool {
        print("bannerViewActionShouldBegin")
        return true
    }

    func bannerViewActionDidFinish(banner: ADBannerView!) {
        print("bannerViewActionDidFinish")
    }

}

