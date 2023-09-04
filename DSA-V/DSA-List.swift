//
//  DSA-List.swift
//  DSA-V
//
//  Created by Careless.apple on 8/10/23.
//

import SwiftUI

struct DSA_List: View {
    @EnvironmentObject var DSAData: DSA_Data
    
    var body: some View {
        NavigationView{
            VStack{
                Text("").navigationTitle("Data Structs")
                List {
                    ForEach(DSA_type.allCases, id: \.self){ dsa_type in
                        if !DSAData.sortedDSAs(dsa_type: dsa_type).isEmpty {
                            Section(content: {
                                ForEach(DSAData.sortedDSAs(dsa_type: dsa_type)){
                                    $dsa in
                                    NavigationLink {
                                        DSA_Details(dsa: $dsa)
                                    } label: {
                                        DSA_Row(dsa: dsa)
                                    }
                                }
                            }, header: {
                                Text(dsa_type.name)
                                    .font(.callout)
                                    .fontWeight(.bold)
                            }
                            )
                        }
                    }
                }
            }
        }
    }
}

struct DSA_List_Previews: PreviewProvider {
    static var previews: some View {
        DSA_List().environmentObject(DSA_Data())
    }
}
