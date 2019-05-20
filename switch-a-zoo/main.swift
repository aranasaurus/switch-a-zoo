//
//  main.swift
//  switch-a-zoo
//
//  Created by Ryan Arana on 5/18/19.
//  Copyright © 2019 aranasaurus.com. All rights reserved.
//

import Foundation

func main() {
    print("Welcome to switch-a-zoo! An Art Inspiration Tool")

    print("Would you like to create a beast manually? [y/n]")
    switch YesNo(readLine()!) {
    case .some(.yes):
        print("Alright, let's get started!")
        createBeast()
    case .some(.no):
        print("Let me think for a moment...")
        sleep(2)
        print(Beast.randomBeast)
    case .none:
        print(["Excuse me?", "Try again...", "I don't understand"].randomElement()!)
    }
}

enum YesNo {
    case yes
    case no

    init?(_ string: String?) {
        switch string?.lowercased() {
        case "y", "yes", "sure", "yah", "yeah", "yea", "ya", "positive":
            self = .yes
        case "n", "no", "nah", "nope", "negative":
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
    guard let size = Size.create() else {
        quit()
        return
    }

    guard let torso = Torso.create() else {
        quit()
        return
    }
    guard let head = Head.create() else {
        quit()
        return
    }
    print("A \(size) beast with the head of a \(head) and the body of a \(torso), eh?")

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

    let tail: Tail?
    print("Does it have a tail? [y/n]")
    switch YesNo(readLine()) {
    case .some(.yes):
        tail = Tail.create()
    default:
        tail = nil
        break
    }

    let horns: Horns?
    print("Does it have horns? [y/n]")
    switch YesNo(readLine()) {
    case .some(.yes):
        horns = Horns.create()
    default:
        horns = nil
        break
    }

    let beast = Beast(torso: torso, head: head, size: size, arms: arms, legs: legs, wings: wings, tail: tail, horns: horns)
    print(beast)
}

main()
