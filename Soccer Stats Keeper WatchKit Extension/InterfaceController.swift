//
//  InterfaceController.swift
//  Soccer Stats Keeper WatchKit Extension
//
//  Created by Chris Simusokwe on 2015/04/25.
//  Copyright (c) 2015 Christopher Simusokwe. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var HScores: WKInterfaceLabel!
    @IBOutlet weak var HShots: WKInterfaceLabel!
    @IBOutlet weak var HFouls: WKInterfaceLabel!
    @IBOutlet weak var HYellows: WKInterfaceLabel!
    @IBOutlet weak var HReds: WKInterfaceLabel!
    
    
    @IBOutlet weak var AScores: WKInterfaceLabel!
    @IBOutlet weak var AShots: WKInterfaceLabel!
    @IBOutlet weak var AFouls: WKInterfaceLabel!
    @IBOutlet weak var AYellows: WKInterfaceLabel!
    @IBOutlet weak var AReds: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.setTheKeys("homeScore")
        self.setTheKeys("homeShots")
        self.setTheKeys("homeFouls")
        self.setTheKeys("homeYellows")
        self.setTheKeys("homeReds")
        
        self.setTheKeys("awayScore")
        self.setTheKeys("awayShots")
        self.setTheKeys("awayFouls")
        self.setTheKeys("awayYellows")
        self.setTheKeys("awayReds")
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        loadValues()
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
    
    func loadValues(){
        
        var _homeScore = NSUserDefaults.standardUserDefaults().stringForKey("homeScore")
        var _homeShots = NSUserDefaults.standardUserDefaults().stringForKey("homeShots")
        var _homeFouls = NSUserDefaults.standardUserDefaults().stringForKey("homeFouls")
        var _homeYellows = NSUserDefaults.standardUserDefaults().stringForKey("homeYellows")
        var _homeReds = NSUserDefaults.standardUserDefaults().stringForKey("homeReds")
        
        var _awayScore = NSUserDefaults.standardUserDefaults().stringForKey("awayScore")
        var _awayShots = NSUserDefaults.standardUserDefaults().stringForKey("awayShots")
        var _awayFouls = NSUserDefaults.standardUserDefaults().stringForKey("awayFouls")
        var _awayYellows = NSUserDefaults.standardUserDefaults().stringForKey("awayYellows")
        var _awayReds = NSUserDefaults.standardUserDefaults().stringForKey("awayReds")
        
        self.HScores.setText(_homeScore)
        self.HShots.setText(_homeShots)
        self.HFouls.setText(_homeFouls)
        self.HYellows.setText(_homeYellows)
        self.HReds.setText(_homeReds)
        
        self.AScores.setText(_awayScore)
        self.AShots.setText(_awayShots)
        self.AFouls.setText(_awayFouls)
        self.AYellows.setText(_awayYellows)
        self.AReds.setText(_awayReds)
    }
    
    func resetAllStats(_key : String){
        
        NSUserDefaults.standardUserDefaults().setObject(0, forKey: _key)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func ResetAllStats() {
        
        resetAllStats("homeScore")
        resetAllStats("homeShots")
        resetAllStats("homeFouls")
        resetAllStats("homeYellows")
        resetAllStats("homeReds")
        
        resetAllStats("awayScore")
        resetAllStats("awayShots")
        resetAllStats("awayFouls")
        resetAllStats("awayYellows")
        resetAllStats("awayReds")
        
        var _homeScore = NSUserDefaults.standardUserDefaults().stringForKey("homeScore")
        var _homeShots = NSUserDefaults.standardUserDefaults().stringForKey("homeShots")
        var _homeFouls = NSUserDefaults.standardUserDefaults().stringForKey("homeFouls")
        var _homeYellows = NSUserDefaults.standardUserDefaults().stringForKey("homeYellows")
        var _homeReds = NSUserDefaults.standardUserDefaults().stringForKey("homeReds")
        
        var _awayScore = NSUserDefaults.standardUserDefaults().stringForKey("awayScore")
        var _awayShots = NSUserDefaults.standardUserDefaults().stringForKey("awayShots")
        var _awayFouls = NSUserDefaults.standardUserDefaults().stringForKey("awayFouls")
        var _awayYellows = NSUserDefaults.standardUserDefaults().stringForKey("awayYellows")
        var _awayReds = NSUserDefaults.standardUserDefaults().stringForKey("awayReds")
        
        
        self.HScores.setText(_homeScore)
        self.HShots.setText(_homeShots)
        self.HFouls.setText(_homeFouls)
        self.HYellows.setText(_homeYellows)
        self.HReds.setText(_homeReds)
        
        self.AScores.setText(_awayScore)
        self.AShots.setText(_awayShots)
        self.AFouls.setText(_awayFouls)
        self.AYellows.setText(_awayYellows)
        self.AReds.setText(_awayReds)
    }
    

}
