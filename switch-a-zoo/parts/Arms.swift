//
//  Arms.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

enum Arms: String, BodyPart {
    static var prompt: String { return "What kind of arms will it have?" }

    case human
    case octupus
    case monkey
    case bear

}
