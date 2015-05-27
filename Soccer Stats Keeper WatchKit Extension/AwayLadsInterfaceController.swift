//
//  AwayLadsInterfaceController.swift
//  Soccer Stats Keeper
//
//  Created by Chris Simusokwe on 2015/04/25.
//  Copyright (c) 2015 Christopher Simusokwe. All rights reserved.
//

import WatchKit
import Foundation


class AwayLadsInterfaceController: WKInterfaceController {

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
    
    func setTheValue (_key: String, changeValue: Int) {
        
        var currentValue = (NSUserDefaults.standardUserDefaults().objectForKey(_key)) as! Int
        
        currentValue += changeValue
        
        NSUserDefaults.standardUserDefaults().setObject(currentValue, forKey: _key)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func AScoresMinus() {
        setTheValue("awayScore", changeValue: -1)
    }
    
    @IBAction func AScoresPlus() {
        setTheValue("awayScore", changeValue: 1)
    }
    
    @IBAction func AShotsMinus() {
        setTheValue("awayShots", changeValue: -1)
    }
    
    @IBAction func AShotsPlus() {
        setTheValue("awayShots", changeValue: 1)
    }
    
    @IBAction func AFoulsMinus() {
        setTheValue("awayFouls", changeValue: -1)
    }
    
    @IBAction func AFoulsPlus() {
        setTheValue("awayFouls", changeValue: 1)
    }
    
    @IBAction func AYellowsMinus() {
        setTheValue("awayYellows", changeValue: -1)
    }
    
    @IBAction func AYellowsPlus() {
        setTheValue("awayYellows", changeValue: 1)
    }
    
    @IBAction func ARedsMinus() {
        setTheValue("awayReds", changeValue: -1)
    }
    
    @IBAction func ARedsPlus() {
        setTheValue("awayReds", changeValue: 1)
    }
    
}
