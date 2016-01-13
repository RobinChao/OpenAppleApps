 
 
 import UIKit
 import Foundation
 
  class OpenAPP {
    static func openiBooks() {
        self.openURL("itms-bookss://")
    }
    
    static func openiBooks(ISBN isbn: String) {
        self.openURL("itms-bookss://itunes.apple.com/book/isbn\(isbn)")
    }

    static func openiBooks(ibooksbookid bookid: String) {
        self.openURL("itms-bookss://itunes.apple.com/book/id\(bookid)")
    }
    
    static func openAppStore() {
        self.openURL("itms-apps://")
    }
    
    static func openAppStore(appid id: String) {
        self.openURL("itms-apps://itunes.apple.com/app/pages/id\(id)")
    }
    
    static func openPhotoLibary() {
        self.openURL("photos-redirect://")
    }
    
    static func openMap(query q: String) {
        self.openURL("http://maps.apple.com/?q=\(q)")
    }
    
    static func openMap(address address: String){
        self.openURL("http://maps.apple.com/?address=\(address)")
    }
    
    static func openMap(location ll: String){
        self.openURL("http://maps.apple.com/?ll=\(ll)")
    }
    
    static func openPhone(phone number: String) {
        self.openURL("tel:\(number)")
    }
    
    static func openSafari(URL url: String) {
        self.openURL(url)
    }
    
    static func openMail(mailto to: String, subject: String, body: String){
        self.openURL("mailto:\(to)?subject=\(subject)&body=\(body)")
    }
    
    static func openSetting() {
        self.openURL(UIApplicationOpenSettingsURLString)
    }
    
    static func openSMS() {
        self.openURL("sms:")
    }
    
    static func openSMS(phone number: String) {
        self.openURL("sms:\(number)")
    }
    
    static func openFaceTime(){
        self.openURL("facetime:")
    }
    
    static func openFaceTime(call call: String){
        self.openURL("facetime://\(call)")
    }
    
    static func openFaceTimeAudio(){
        self.openURL("facetime-audio:")
    }
    
    static func openFaceTimeAudio(call call: String){
        self.openURL("facetime-audio://\(call)")
    }
    
    static func openURL(URLString: String) {
        if  UIApplication.sharedApplication().canOpenURL(NSURL(string: URLString)!) {
                UIApplication.sharedApplication().openURL(NSURL(string: URLString)!)
        }else{
            print("didn't  open   \(URLString)")
        }
    }
 }
 