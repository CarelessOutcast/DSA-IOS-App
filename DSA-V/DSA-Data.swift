//
//  DSA-Data.swift
//  DSA-V
//
//  Created by Careless.apple on 8/11/23.
//

import Foundation
import SwiftUI

class DSA_Data: ObservableObject {
    @Published var DSAs: [DSA] = [
        DSA(
            dsa_type: .linear,
            level: .basic,
            title: "Array",
            description: "Associative Container"
        ),
        DSA(
            dsa_type: .pointer,
            level: .basic,
            title: "Linked List",
            description: "Associative Container"
        ),
        DSA(
            dsa_type: .map,
            level: .medium,
            title: "Hash Map",
            description: "Associative Container"
        ),
        DSA(
            dsa_type: .linear,
            level: .medium,
            title: "Stack",
            description: "FILO Container"
        ),
        DSA(
            dsa_type: .linear,
            level: .medium,
            title: "Queue",
            description: "FIFO Container"
        )
    ]
    func sortedDSAs(dsa_type: DSA_type) -> Binding<[DSA]>{
        Binding<[DSA]> (
            get: {
                self.DSAs.filter {
                    switch dsa_type {
                    case .linear:
                        return $0.isLinear
                    case .graph:
                        return $0.isGraph
                    case .tree:
                        return $0.isTree
                    case .algorithm:
                        return $0.isAlgorithm
                    case .pointer:
                        return $0.isPointer
                    case .map:
                        return $0.isMap
                    }
                }
            },
            set:{ DSAs in
                for dsa in DSAs {
                    if let index = self.DSAs.firstIndex(where: {$0.id == dsa.id})
                    {
                        self.DSAs[index] = dsa
                    }
                }
            }
        )
    }
}


enum DSA_type: String, CaseIterable, Identifiable {
    case linear = " Linear "
    case graph = " Graph "
    case tree = " Tree "
    case algorithm = " Algorithm "
    case pointer = " Pointer "
    case map = " Map "
    
    var id: Self { self }
    var name: String { self.rawValue }
}
