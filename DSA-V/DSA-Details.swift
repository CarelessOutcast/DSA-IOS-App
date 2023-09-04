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
    @State var selectedTab: Tabs = .Text
    
    var body: some View {
        VStack(spacing:0){
            ZStack{
                switch selectedTab {
                case .Text:
                    VStack(spacing:0){
                        Text("").navigationTitle(dsa.title)
                        Divider()
                        List{
                            VStack(alignment: .leading){
                                HStack{
                                    Text(dsa.description)
                                        .font(.title2)
                                    Spacer()
                                    Text(dsa.level.name)
                                }
                                Text(dsa.explanation)
                            }
                        }
                    }
                case .Pseudo:
                    ScrollView{
                        VStack{
                            Text("Pseudo")
                        }
                    }
                case .Code:
                    ScrollView{
                        VStack{
                            Text("Code")
                        }
                    }
                }
            }
            Divider()
            TabBar(selectedTab: $selectedTab)
                .padding(.top, 12)
        }
    }
}

struct DSA_Details_Previews: PreviewProvider {
    static var previews: some View {
        DSA_Details(dsa: .constant(DSA.example))
    }
}
