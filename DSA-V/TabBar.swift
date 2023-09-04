//
//  TabBar.swift
//  DSA-V
//
//  Created by Careless.apple on 9/3/23.
//

import SwiftUI

enum Tabs: Int {
    case Text = 0
    case Pseudo = 1
    case Code = 2
}

struct TabBar: View {
    let box_size: Double = 65.0
    @Binding var selectedTab: Tabs
    
    var body: some View {
        
        HStack{
            Button {
                selectedTab = .Text
            } label:{
                GeometryReader { geo in
                    if selectedTab == .Text {
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: geo.size.width/2, height: 4.0)
                            .padding(.leading, geo.size.width/4)
                    }
                    VStack (alignment: .center, spacing: 4.0){
                        Image(systemName: "1.lane")
                            .resizable()
                            .scaledToFit()
                        Text("Text")
                            .bold()
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .frame(width: box_size, height: box_size)
            .padding(8)
            
            Button {
                selectedTab = .Pseudo
            } label:{
                GeometryReader { geo in
                    if selectedTab == .Pseudo {
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: geo.size.width/2, height: 4.0)
                            .padding(.leading, geo.size.width/4)
                    }
                    VStack (alignment: .center, spacing: 4.0){
                        Image(systemName: "2.lane")
                            .resizable()
                            .scaledToFit()
                        Text("Pseudo")
                            .bold()
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .frame(width: box_size, height: box_size)
            .padding(8)
            
            Button {
                selectedTab = .Code
            } label:{
                GeometryReader { geo in
                    if selectedTab == .Code {
                        Rectangle()
                            .foregroundColor(.blue)
                            .frame(width: geo.size.width/2, height: 4.0)
                            .padding(.leading, geo.size.width/4)
                    }
                    VStack (alignment: .center, spacing: 4.0){
                        Image(systemName: "3.lane")
                            .resizable()
                            .scaledToFit()
                        Text("Code")
                            .bold()
                    }
                    .frame(width: geo.size.width, height: geo.size.height)
                }
            }
            .frame(width: box_size, height: box_size)
            .padding(8)
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedTab: .constant(.Text))
    }
}
