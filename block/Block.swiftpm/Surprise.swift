//
//  Surprise.swift
//  Block
//
//  Created by user237376 on 4/11/23.
//

import SwiftUI

struct Surprise: View {
    @State var shouldShowBlockLetter: Bool = false
    var body: some View {
        NavigationView {
            ZStack{
                Color(UIColor(red: 1.00, green: 0.82, blue: 0.82, alpha: 1.00))
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack{
                    
                   Spacer()
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .frame(width: 400, height: 200)
                        .overlay(content: {
                            Text("Tap to find out what's inside the block")
                                .font(.system(size: 35))
                                .frame(width: 350, height: 200)
                                .multilineTextAlignment(.center)
                        })
                   
                    Circle()
                        .fill(.white)
                        .frame(width: 500)
                        .shadow(color:.gray,radius: 10, x: 5, y: 5)
                        .overlay(content: {
                            NavigationLink(destination:BlockLetter(), isActive: $shouldShowBlockLetter) {
                                                       EmptyView()
                                                   }
                            Button(action: {
                                self.shouldShowBlockLetter = true
                            }, label: {
                                Image("genesisBlock")
                                    .resizable()
                                    .frame(width: 300,height: 290)
                            })
                            
                        })
                    Spacer()
                    HStack{
                        Image("BlockSurprised")
                            .resizable()
                            .frame(width: 380,height: 300)
                            .padding(.leading,80)
                        Spacer()
                    }
                    
                }
            }

        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        
        

    }
    
    struct Surprise_Previews: PreviewProvider {
        static var previews: some View {
            Surprise()
        }
    }
    
}
