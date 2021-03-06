//
//  OptionsController.swift
//  Browser
//
//  Created by Andreas Ziemer on 11.11.15.
//  Copyright © 2015 SECH-Tag-EEXCESS-Browser. All rights reserved.
//

import UIKit

class SettingsController: UITableViewController{
    
    @IBOutlet weak var homeSetting: UITableViewCell!
    @IBOutlet weak var ageSetting: UITableViewCell! //child, young adult, adult
    @IBOutlet weak var genderSetting: UITableViewCell!
    @IBOutlet weak var countrySetting: UITableViewCell!
    @IBOutlet weak var citySetting: UITableViewCell!
    @IBOutlet weak var languageSetting: UITableViewCell!
    
    let settingsModel = SettingsModel()
 
    override func viewDidLoad(){
        super.viewDidLoad()
        homeSetting.detailTextLabel?.text = settingsModel.homeURL
        ageSetting.detailTextLabel?.text = String(settingsModel.age)
        genderSetting.detailTextLabel?.text = settingsModel.gender
        countrySetting.detailTextLabel?.text = settingsModel.country
        citySetting.detailTextLabel?.text = settingsModel.city
        languageSetting.detailTextLabel?.text = settingsModel.language
    
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let selected = self.tableView .cellForRowAtIndexPath(indexPath)

        switch selected {
        case homeSetting?:
            print(settingsModel.homeURL)
        case ageSetting?:
            print(settingsModel.age)
        case genderSetting?:
            print(settingsModel.gender)
        case countrySetting?:
            print(settingsModel.country)
        case citySetting?:
            print(settingsModel.city)
        case languageSetting?:
            print(settingsModel.language)
        default:
            print("asd")
        }
    }
 }