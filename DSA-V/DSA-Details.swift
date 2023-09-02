//
//  DSA-Details.swift
//  DSA-V
//
//  Created by Careless.apple on 8/11/23.
//

import SwiftUI

struct DSA_Details: View {
    @Binding var dsa: DSA
    var body: some View {
        Text("Hello world")
    }
}

struct DSA_Details_Previews: PreviewProvider {
    static var previews: some View {
        DSA_Details(dsa: .constant(DSA.example))
    }
}
