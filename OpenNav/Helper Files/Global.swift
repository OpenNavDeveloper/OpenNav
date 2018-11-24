//
//  Global Constants.swift
//  OpenNav
//
//  Created by Sylvan Martin on 10/3/18.
//  Copyright © 2018 Sylvan Martin. All rights reserved.
//

import Foundation

/*
 * This file us just to house all global constants
 */

// MARK: CONSTANTS
struct Keys {
    public let buildingName = "buildingName"
    public let imageCount = "floorCount"
    public let imageNameBase = "imageName"
    public let imageBase = "floorImage"
    public let acronym = "buildingAcro"
    public let infoDict = "layoutInformationDictionary"
}

let navdataserviceURL = "https://navdataservice.000webhostapp.com/layouts/"
let databaseUrl =       "http://navdataservice.000webhostapp.com/database.php?"

struct BuildingInfoDictionaryItemNames {
    
    public let floorCount = "floorCount"
    public let acronym = "acronym"
    public let imageNames = "imageNames"
    public let imagesAvailable = "Images Available"
    public let name = "Name"
    
    public let navMatrix = "nav_matrix"
    public let correctionMatrix = "correction_matrix"
    
}

// MARK: FUNCTIONS
func clearLayoutData() {
    let domain = Bundle.main.bundleIdentifier!
    UserDefaults.standard.removePersistentDomain(forName: domain)
    UserDefaults.standard.synchronize()
    print("Cleared Layout Data")
}
