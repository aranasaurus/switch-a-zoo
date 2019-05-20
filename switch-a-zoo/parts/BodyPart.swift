//
//  BodyPart.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

protocol BodyPart: CaseIterable {
    static var prompt: String { get }

    init?(index: AllCases.Index)
    init?(rawValue: String)
}

extension BodyPart {
    init?(index: AllCases.Index) {
        guard index < Self.allCases.endIndex else { return nil }
        self = Self.allCases[index]
    }
}

extension BodyPart where Self.AllCases.Index == Int {
    static func create(randomized: Bool = false) -> Self? {
        guard !randomized else {
            return Self.allCases.randomElement()
        }
        print(Self.prompt)
        for (i, t) in Self.allCases.enumerated() {
            print("  \(i + 1): \(t)")
        }
        print("[1-\(Self.allCases.count)] or (q)uit:")
        let a = readLine()!.lowercased()
        if let i = Int(a) {
            guard let part = Self(index: i - 1) else {
                if a == "q" || a == "quit" {
                    quit()
                }
                print("Invalid choice. Try again.")
                return create()
            }
            return part
        } else if let part = Self(rawValue: a) {
            return part
        } else {
            if a == "q" || a == "quit" {
                quit()
            }
            print("Sorry, you haven't unlocked \(a) yet.")
            return create()
        }
    }
}
