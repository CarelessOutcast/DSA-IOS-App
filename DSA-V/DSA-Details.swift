//
//  DSA-Details.swift
//  DSA-V
//
//  Created by Careless.apple on 8/11/23.
//

import SwiftUI

/*
 var id = UUID()
var dsa_type: DSA_type = .linear
var level: Level = .basic
var title: String = ""
var description: String = ""
*/
struct DSA_Details: View {
    @Binding var dsa: DSA
    
    var body: some View {
        ZStack{
            Canvas { context, size in }
                .frame(width: .infinity, height: .infinity)
                .border(.blue)
            List{
                VStack{
                    VStack(alignment: .leading){
                        HStack{
                            Text(dsa.title)
                                .font(.title)
                                .bold()
                            Spacer()
                            Text(dsa.level.name)
                        }
                        Text(dsa.description)
                            .font(.title2)
                    }
                    VStack(alignment: .leading){
                        Text(dsa.explanation)
                    }
                }
            }
        }
    }
}

struct DSA_Details_Previews: PreviewProvider {
    static var previews: some View {
        DSA_Details(dsa: .constant(DSA.example))
    }
}
