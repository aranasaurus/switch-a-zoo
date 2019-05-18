//
//  Wings.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

enum Wings: String, BodyPart {
    static var prompt: String { return "What kind of wings?" }

    case eagle
    case wasp
    case dragon
}
