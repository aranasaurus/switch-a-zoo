//
//  Legs.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

enum Legs: String, BodyPart {
    static var prompt: String { return "What kind of legs?" }

    case dragon
    case human
    case horse
}
