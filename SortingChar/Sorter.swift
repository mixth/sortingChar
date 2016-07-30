//
//  Sorter.swift
//  SortingChar
//
//  Created by Narat Suchartsunthorn on 7/30/16.
//  Copyright © 2016 mixth. All rights reserved.
//

import Foundation

struct Sorter {
    func sort(input: String) -> String {
        let lower = input.lowercased()
        let sorted = String(lower.characters.sorted())
        let removedSpace = sorted.trimmingCharacters(in: CharacterSet.whitespaces)
        return removedSpace
    }
}
