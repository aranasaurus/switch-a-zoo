//
//  Tail.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

enum Tail: String, BodyPart {
    static var prompt: String { return "What kind of tail?" }
    case dragon
    case shark
    case scorpion
    case wasp
    case cat
    case dog
}
