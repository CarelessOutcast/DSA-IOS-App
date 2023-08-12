//
//  DSA_VApp.swift
//  DSA-V
//
//  Created by Careless.apple on 8/10/23.
//

import SwiftUI

@main
struct DSA_VApp: App {
    @StateObject private var dsa_data = DSA_Data()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                DSA_List()
            }.environmentObject(dsa_data)
        }
    }
}
