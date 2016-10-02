//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Elias Miller on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        if speed > 0 && altitude > 0 {
            return true
        } else {
            return false
    }
    }

    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        self.maxAltitude = maxAltitude
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }

    func takeOff() {
        if inFlight == false {
            speed += 0.10 * maxSpeed
            altitude += 0.10 * altitude
        }
    }
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight == true && altitude < maxAltitude {
            altitude += 0.10 * maxAltitude
        }
    }
    
    func dive() {
        if altitude > 0 && inFlight == true {
            if speed >= 0 && inFlight == true {
            altitude -= 0.10 * maxAltitude

        }
           }
}

    func bankRight() {
        if inFlight == true {
            heading += 45
            speed -= 0.10 * speed 
        }
        
    }



}
