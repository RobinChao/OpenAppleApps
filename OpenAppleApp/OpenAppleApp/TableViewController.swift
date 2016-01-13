//
//  TableViewController.swift
//  OpenAppleApp
//
//  Created by Robin on 1/13/16.
//  Copyright © 2016 Robin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var   appList = ["iBooks", "iBooks With ISBN", "iBooks With ID",  "AppStore", "AppStore With APPID", "PhotoLibary", "Map WIth Query", "Map  With address", "Map  With location", "Mobile Phone", "Safari", "Email", "Setting",  "SMS", "SMS With Number", "FaceTime", "FaceTime call", "FaceTime Audio", "FaceTime Audio call"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Open  Apple  Apps"
  
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appList.count
    }
 
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        cell.textLabel?.text = appList[indexPath.row]

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        switch indexPath.row {
        case 0:
            OpenAPP.openiBooks()
        case 1:
            OpenAPP.openiBooks(ISBN: "9787508649719")
        case 2:
            OpenAPP.openiBooks(ibooksbookid: "1048889549")
        case 3:
            OpenAPP.openAppStore()
        case 4:
            OpenAPP.openAppStore(appid: "1064902326")
        case 5:
                OpenAPP.openPhotoLibary()
        case 6:
            OpenAPP.openMap(query: "Mexican+Restaurant")
        case 7:
            OpenAPP.openMap(address: "1,Infinite+Loop,Cupertino,California")
        case 8:
            OpenAPP.openMap(location: "39.904671,116.407159")
        case 9:
            OpenAPP.openPhone(phone: "188-8888-8888")
        case 10:
            OpenAPP.openURL("https://www.google.cn")
        case 11:
            OpenAPP.openMail(mailto: "123@123.123", subject: "subject", body: "body")
        case 12:
            OpenAPP.openSetting()
        case 13:
            OpenAPP.openSMS()
        case 14:
            OpenAPP.openSMS(phone: "18888888888")
        case 15:
            OpenAPP.openFaceTime()
        case 16:
            OpenAPP.openFaceTime(call: "18888888888")
        case 17:
            OpenAPP.openFaceTimeAudio()
        case 18:
            OpenAPP.openFaceTimeAudio(call: "18888888888")
        default:
            break
        }
    }

}
