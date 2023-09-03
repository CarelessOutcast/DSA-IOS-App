//
//  DSA-Shapes.swift
//  DSA-V
//
//  Created by Careless.apple on 9/2/23.
//

import SwiftUI

struct Node: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.maxX, y:rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX/2, y: rect.minY/2))
        return path
    }
}
