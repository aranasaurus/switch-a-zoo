//
//  main.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

func main() {
    print("Welcome to Sw!tch-a-zoo!")

    print("Would you like to create a beast? [Y/n]")
    switch YesNo(readLine()!) ?? .yes {
    case .yes:
        print("Alright, let's get started!")
        createBeast()
    case .no:
        quit()
    }
}

enum YesNo {
    case yes
    case no

    init?(_ string: String?) {
        switch string?.lowercased() {
        case "y", "yes":
            self = .yes
        case "n", "no":
            self = .no
        default: return nil
        }
    }
}

func quit() {
    print("OK, BYE! 👋")
    exit(0)
}

private func createBeast() {
    guard let torso = Torso.create() else {
        quit()
        return
    }
    guard let head = Head.create() else {
        quit()
        return
    }
    print("A beast with the head of a \(head) and the body of a \(torso), eh?")

    let wings: Wings?
    print("Does it have wings? [y/n]")
    switch YesNo(readLine()) {
    case .some(.yes):
        wings = Wings.create()
    default:
        wings = nil
        break
    }

    let legs: Legs?
    print("Does it have legs? [y/n]")
    switch YesNo(readLine()) {
    case .some(.yes):
        legs = Legs.create()
    default:
        legs = nil
        break
    }

    let arms: Arms?
    print("How about arms? [y/n]")
    switch YesNo(readLine()) {
    case .some(.yes):
        arms = Arms.create()
    default:
        arms = nil
        break
    }

    let beast = Beast(torso: torso, head: head, arms: arms, legs: legs, wings: wings)
    print(beast)
}

main()
