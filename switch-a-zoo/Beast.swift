//
//  Beast.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

class Beast {
    var torso: Torso
    var head: Head
    var arms: Arms?
    var legs: Legs?
    var wings: Wings?
    var tail: Tail?

    init(torso: Torso, head: Head, arms: Arms? = nil, legs: Legs? = nil, wings: Wings? = nil, tail: Tail? = nil) {
        self.torso = torso
        self.head = head
        self.arms = arms
        self.legs = legs
        self.wings = wings
        self.tail = tail
    }
}

extension Beast: CustomStringConvertible {
    var description: String {
        var output = "A beast with the body of a \(torso) and the head of a \(head)"
        if let arms = arms {
            output.append(" and \(arms) arms")
        }

        if let legs = legs {
            output.append(". It stands on the legs of a \(legs)")
        }

        if let tail = tail {
            output.append(" and has the amazing tail of a \(tail)")
        }

        if let wings = wings {
            output.append(". With the wings of a \(wings)!")
        }

        return output
    }
}
