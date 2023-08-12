//
//  DSA-Row.swift
//  DSA-V
//
//  Created by Careless.apple on 8/10/23.
//

import SwiftUI

struct DSA_Row: View {
    let dsa: DSA
    
    var body: some View {
        HStack {
            Circle()
                .foregroundColor(.green)
                .frame(width: 18.0, height: 18.0)
            
            VStack(alignment: .leading, spacing: 5){
                Text(dsa.title)
                    .font(.title3)
                Text(dsa.description)
                    .fontWeight(.light)
            }
        }
        
    }
}

struct DSA_Row_Previews: PreviewProvider {
    static var previews: some View {
        DSA_Row(dsa: DSA.example)
    }
}
