//
//  AppDelegate.swift
//  tvOSSample
//
//  Created by Fabrizio Guglielmino on 01/01/16.
//  Copyright © 2016 Fabrizio Guglielmino. All rights reserved.
//

import UIKit
import TVMLKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, TVApplicationControllerDelegate {

    var window: UIWindow?

    var appController: TVApplicationController?
    static let TVBaseURL = "http://localhost:9001/"
    static let TVBootURL = "\(AppDelegate.TVBaseURL)/app.js"
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // Controller context for loading JavaScript
        let appControllerContext = TVApplicationControllerContext()
        // Url from wich to load javascript
        appControllerContext.javaScriptApplicationURL = NSURL(string: AppDelegate.TVBootURL)!
        // BASEURL variable will be available in the JavaScript code
        appControllerContext.launchOptions["BASEURL"] = AppDelegate.TVBaseURL
        
        // Standard controller for tvOS Apps based on TVMLKit
        appController = TVApplicationController(context: appControllerContext, window: window, delegate: self)
        return true
    }
}

