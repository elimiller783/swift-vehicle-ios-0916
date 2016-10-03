//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Elias Miller on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation
class Jet: Plane {
    override func climb() {
        if altitude < maxAltitude && inFlight == true {
            altitude += 0.20 * maxAltitude
            decelerate()
        }
    }

    override func dive() {
        if altitude > 0 && inFlight == true {
            altitude -= 0.20 * maxAltitude
            accelerate()
        }
    }

    func afterburner() {
        if inFlight == true && speed == maxSpeed {
            speed = maxSpeed * 2.0
        }
    }

}
