//
//  Horns.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

enum Horns: String, BodyPart {
    static var prompt: String { return "What kind of horns?" }
    case dragon
    case rhino
    case unicorn
    case elk
}
