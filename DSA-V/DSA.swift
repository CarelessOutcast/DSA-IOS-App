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
    var title: String = ""
    var description: String = ""
    
    
    static var example = DSA (
        dsa_type: .linear,
        title: "Array",
        description: "Associative Container"
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
