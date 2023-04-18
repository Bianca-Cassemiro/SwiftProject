//
//  Polygon.swift
//  Block
//
//  Created by user237376 on 4/15/23.
//

import SwiftUI

struct Polygon: Shape, Hashable{
    var sides: Int
    let uuid = UUID()
    func path(in rect: CGRect) -> Path {
       var path = Path()
        
        let radius = rect.midX - rect.minX
        let cx = rect.midX
        let cy = rect.midY
        var angle: CGFloat = 0
        let step: CGFloat = (CGFloat.pi * 2)/CGFloat(sides)
        
        for i in 0..<sides {
            let x = cx + radius * cos(angle)
            let y = cy + radius * sin(angle)
            
            if i == 0{
                path.move(to: CGPoint(x: x, y:  y))
            }else{
                path.addLine(to: CGPoint(x: x, y: y))
            }
            angle += step
        }
        
        return path
    }
}

