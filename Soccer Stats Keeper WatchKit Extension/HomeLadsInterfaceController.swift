//
//  HomeLadsInterfaceController.swift
//  Soccer Stats Keeper
//
//  Created by Chris Simusokwe on 2015/04/25.
//  Copyright (c) 2015 Christopher Simusokwe. All rights reserved.
//

import WatchKit
import Foundation


class HomeLadsInterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func setTheKeys(_key: String){
        
        if NSUserDefaults.standardUserDefaults().objectForKey(_key) == nil{
            NSUserDefaults.standardUserDefaults().setInteger(0, forKey: _key)
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }
    
    func setTheValue (_key: String, changeValue: Int) {
        
        var currentValue = (NSUserDefaults.standardUserDefaults().objectForKey(_key)) as! Int
        
        currentValue += changeValue
        
        NSUserDefaults.standardUserDefaults().setObject(currentValue, forKey: _key)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func HScoreMinus() {
        setTheValue("homeScore", changeValue: -1)
    }
    
    @IBAction func HScorePlus() {
        setTheValue("homeScore", changeValue: 1)
    }
    
    @IBAction func HShotsMinus() {
        setTheValue("homeShots", changeValue: -1)
    }
    
    @IBAction func HShotsPlus() {
        setTheValue("homeShots", changeValue: 1)
    }
    
    @IBAction func HFoulsMinus() {
        setTheValue("homeFouls", changeValue: -1)
    }
    
    @IBAction func HFoulsPlus() {
        setTheValue("homeFouls", changeValue: 1)
    }
    
    @IBAction func HYellowsMinus() {
        setTheValue("homeYellows", changeValue: -1)
    }
    
    @IBAction func HYellowsPlus() {
        setTheValue("homeYellows", changeValue: 1)
    }
    
    @IBAction func HRedsMinus() {
        setTheValue("homeReds", changeValue: -1)
    }

    @IBAction func HRedsPlus() {
        setTheValue("homeReds", changeValue: 1)
    }
    
}
