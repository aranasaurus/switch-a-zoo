//
//  Size.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

enum Size: String, BodyPart {
    static var prompt: String { return "How big is it?" }
    case huge
    case big
    case regular
    case small
    case tiny
}

extension Size: CustomStringConvertible {
    var description: String {
        switch self {
        case .huge: return "FRIGGIN HUGE"
        case .big: return "pretty big"
        case .regular: return "regular sized"
        case .small: return "kinda small"
        case .tiny: return "bug-sized"
        }
    }
}
