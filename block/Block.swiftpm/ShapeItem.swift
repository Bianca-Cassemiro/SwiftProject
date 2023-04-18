//
//  ShapeItem.swift
//  Block
//
//  Created by user237376 on 4/15/23.
//

import SwiftUI

struct ShapeItem: View , Hashable{
   let uuid = UUID()
    var color: Color
    var sides: Int
    var size: CGFloat = 230
    var dregree: CGFloat
    
    var body: some View {
        getShape()
               .fill(color)
               .frame(width: size,height: size)
             
               .rotationEffect(Angle(radians: Double.pi / 4))
               .clipShape(RoundedRectangle(cornerRadius: 40))
               
    }
    
    func getShape() -> some Shape {
        return Polygon(sides: sides)
    }
}

