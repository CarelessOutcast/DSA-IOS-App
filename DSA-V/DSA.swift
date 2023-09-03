//
//  DSA.swift
//  DSA-V
//
//  Created by Careless.apple on 8/10/23.
//

import SwiftUI



struct DSA: Hashable, Identifiable {
    var id = UUID()
    var dsa_type: DSA_type = .linear
    var level: Level = .basic
    var title: String = ""
    var description: String = ""
    var explanation: String = ""
    
    static var example = DSA (
        dsa_type: .linear,
        level: .basic,
        title: "Array",
        description: "Associative Container",
        explanation: " \tLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. \n\tLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. "
    )
    
    var isLinear: Bool{
        dsa_type == .linear
    }
    var isGraph: Bool {
        dsa_type == .graph
    }
    var isTree: Bool {
        dsa_type == .tree
    }
    var isAlgorithm: Bool {
        dsa_type == .algorithm
    }
    var isPointer: Bool {
        dsa_type == .pointer
    }
    var isMap: Bool {
        dsa_type == .map
    }
}

enum Level: String, Identifiable, CaseIterable {
    case basic = "Basic"
    case medium = "Medium"
    case advanced = "Advanced"
    
    var id: String { self.rawValue }
    var name: String {self.rawValue}
}
