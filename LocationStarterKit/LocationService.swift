//
//  LocationService.swift
//  LocationStarterKit
//
//  Created by Takamitsu Mizutori on 2016/08/12.
//  Copyright © 2016年 Goldrush Computing Inc. All rights reserved.
//

import UIKit
import CoreLocation

class LocationService: NSObject, CLLocationManagerDelegate{
    
    let locationManager: CLLocationManager
    
    override init() {
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager.requestWhenInUseAuthorization()
        
        super.init()
        locationManager.delegate = self
    }
    
    
    func startUpdatingLocation(){
        locationManager.startUpdatingLocation()
    }
    
    
    //MARK: CLLocationManagerDelegate protocol methods
    func locationManager(_ manager: CLLocationManager,
                                  didUpdateLocations locations: [CLLocation]){
        
        if let newLocation = locations.last{
            print("(\(newLocation.coordinate.latitude), \(newLocation.coordinate.latitude))")
        }        
    }   
    
}

