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
    var size: Size
    var arms: Arms?
    var legs: Legs?
    var wings: Wings?
    var tail: Tail?
    var horns: Horns?

    init(torso: Torso, head: Head, size: Size, arms: Arms? = nil, legs: Legs? = nil, wings: Wings? = nil, tail: Tail? = nil, horns: Horns? = nil) {
        self.torso = torso
        self.head = head
        self.size = size
        self.arms = arms
        self.legs = legs
        self.wings = wings
        self.tail = tail
        self.horns = horns
    }

    static var randomBeast: Beast {
        return Beast(
            torso: Torso.allCases.randomElement()!,
            head: Head.allCases.randomElement()!,
            size: Size.allCases.randomElement()!,
            arms: Arms.allCases.randomElement(),
            legs: Legs.allCases.randomElement(),
            wings: Wings.allCases.randomElement(),
            tail: Tail.allCases.randomElement(),
            horns: Horns.allCases.randomElement()
        )
    }
}

extension Beast: CustomStringConvertible {
    var description: String {
        var output = "A \(size.description) beast with the body of a \(torso) and the head of a \(head)"

        if let horns = horns {
            output.append(" with \(horns) horns")
        }

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
