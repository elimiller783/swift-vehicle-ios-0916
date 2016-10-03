//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Elias Miller on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0
    var heading: Double = 0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0
    }
    
    func accelerate() {
        if speed < maxSpeed {
            speed += (0.10 * maxSpeed)
        }
    }
    
    func decelerate() {
        if speed != 0 {
            speed -= (0.10 * maxSpeed)
        }
    }
    
    func turnRight() {
        if speed > 0    {
            if (heading < 360 && heading >= 0) {
            heading += 90.0
            speed = speed * 0.50
        } else {
            if heading == 360 {
                heading = 0
            }
        }
            }
    }
    
    func turnLeft() {
        var newHeading: Double = 0
        if heading == 0 {
            newHeading = 360
        } else if heading == 360 {
            newHeading = 0
            heading = newHeading
        }
        if speed > 0 {
            if heading < 360 && heading > 0 {
                
                heading -= 90.0
                speed *= 0.50
            } else if newHeading <= 360 && newHeading > 0 {
                speed *= 0.5
                heading = newHeading - 90
            }
        }
    }
    
}
