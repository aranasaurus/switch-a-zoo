//
//  Head.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

enum Head: String, BodyPart {
    static var prompt: String { return "Choose a head:" }
    case shark
    case octupus
    case eagle
    case dragon
    case wasp
}
