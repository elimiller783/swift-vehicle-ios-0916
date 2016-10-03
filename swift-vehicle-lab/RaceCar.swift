//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Elias Miller on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
        
        
    }
    
    override func accelerate() {
        if speed < maxSpeed {
            speed += 0.20 * maxSpeed
        }
    }
    override  func decelerate() {
        if speed > 0 {
            speed -= 0.20 * maxSpeed
        }
    }
    
    
    func driftRight() {
       
        if speed > 0 {
            speed -= (speed * 0.25)
           heading += 90
            if heading > 360 {
                heading = Double(Int(heading) % 360)
            }
        }
    }
    
    func driftLeft() {
        if speed > 0 {
            speed -= (speed * 0.25)
            
            if super.heading <= 0 {
                super.heading += 360
            }
            heading -= 90
        }
    }
}
