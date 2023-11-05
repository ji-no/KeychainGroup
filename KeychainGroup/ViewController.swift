//
//  ViewController.swift
//  
//  
//  Created by ji-no on 2023/11/05
//  
//

import UIKit
import KeychainAccess

class ViewController: UIViewController {

    let defaultKeychain = Keychain()

    let sharedAccessGroup = Bundle.main.object(forInfoDictionaryKey: "SharedAccessGroup") as! String
    lazy var shareKeychain: Keychain = {
        return Keychain(accessGroup: self.sharedAccessGroup)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("sharedAccessGroup: \(sharedAccessGroup)")

        defaultKeychain["key1"] = "defaultValue1"
        defaultKeychain["key2"] = "defaultValue2"

        shareKeychain["key2"] = "sharedValue2"
        shareKeychain["key3"] = "sharedValue3"
        shareKeychain["key4"] = "sharedValue4"

        defaultKeychain["key4"] = "defaultValue4"
        
        print("defalut[key1]: \(defaultKeychain["key1"])")
        print("defalut[key2]: \(defaultKeychain["key2"])")
        print("defalut[key3]: \(defaultKeychain["key3"])")
        print("defalut[key4]: \(defaultKeychain["key4"])")

        print("share[key1]: \(shareKeychain["key1"])")
        print("share[key2]: \(shareKeychain["key2"])")
        print("share[key3]: \(shareKeychain["key3"])")
        print("share[key4]: \(shareKeychain["key4"])")

        
    }


}

