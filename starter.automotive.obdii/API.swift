//
//  API.swift
//  starter.automotive.obdii
//
//  Created by Eliad Moosavi on 2016-11-15.
//  Copyright © 2016 IBM. All rights reserved.
//

import Foundation
import UIKit

struct API {
    // Platform API URLs
    static let orgId: String = "kibb33";
    static let platformAPI: String = "https://" + orgId + ".internetofthings.ibmcloud.com/api/v0002";
    
    static let apiKey: String = "a-kibb33-rkhexfo7ml";
    static let apiToken: String = "lDfjTThkWv*@Ea_!4d";
    static let credentials: String = apiKey + ":" + apiToken;
    static let credentialsData = (credentials).data(using: String.Encoding.utf8)
    static let credentialsBase64 = API.credentialsData!.base64EncodedString(options: NSData.Base64EncodingOptions(rawValue: 0))
    
    static let typeId: String = "OBDII";
    
    static let DOESNOTEXIST: String = "doesNotExist";
    
    // Endpoints
    static let addDevices: String = platformAPI + "/bulk/devices/add";
    
    static func getUUID() -> String {
        if let uuid = UserDefaults.standard.string(forKey: "iota-starter-uuid") {
            return uuid
        } else {
            let value = NSUUID().uuidString
            UserDefaults.standard.setValue(value, forKey: "iota-starter-uuid")
            return value
        }
    }
}