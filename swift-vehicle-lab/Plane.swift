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
    
    func takeoff() {
        if inFlight == false {
            speed += 0.10 * super.maxSpeed
            altitude += 0.10 * self.maxAltitude
        }
    }
    func land() {
        speed = 0
        altitude = 0
    }
    
    func climb() {
        if inFlight == true && altitude < maxAltitude {
            altitude += 0.10 * maxAltitude
            decelerate()
        }
    }
    
    func dive() {
        if (altitude > 0 && inFlight == true) || (speed >= 0 && altitude > 0) {
            altitude -= 0.10 * maxAltitude
            super.accelerate()
        }
    }
    
    
    
    
    
    func bankRight() {
        if inFlight == true {
            if (heading < 360 && heading >= 0) {
                super.heading += 45
                speed -= (0.10 * speed)
                
            } else {
                if heading == 360 {
                    heading = 0
                }
            }
        }
    }
    
    func bankLeft() {
        if inFlight == true && super.heading <= 360 && super.heading >= 0 {
            speed -= 0.10 * speed
            super.heading -= 45
        }
        if super.heading <= 0 && inFlight == true {
            super.heading = abs(super.heading + 360)
        }
//        if super.heading <= 360 && super.heading >= 0 {
//            super.heading -= 45
//        }
    }
}
