//
//  RareItem.swift
//  Block
//
//  Created by user237376 on 4/13/23.
//

import SwiftUI

struct RareItem: View {
    var body: some View {
        ZStack{
            Color(uiColor: UIColor(red: 0.70, green: 0.84, blue: 0.84, alpha: 1.00))
            .ignoresSafeArea()
            VStack{
                Spacer()
                Text("This is a pseudocode of a smart contract, on the Blockchain this is how transactions are done")
                    .frame(width: 600)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 34))
                
                Circle()
                    .frame(width: 500)
                    .foregroundColor(.white)
                    .shadow(color: .gray, radius: 10)
                    .overlay(content: {
                        Image("RareItem")
                            .resizable()
                            .frame(width: 400,height: 400)
                            
                    })
                Text("Click on the Magic Pen")
                    .font(.system(size: 40))
                    .foregroundColor(.blue)
                    .padding(.top,30)
                    
            Spacer()
             Image("BlockAndSeller")
                    .resizable()
                    .frame(width: 800, height: 330)
                Spacer()
                }
            }
    }
}

struct RareItem_Previews: PreviewProvider {
    static var previews: some View {
        RareItem()
    }
}
