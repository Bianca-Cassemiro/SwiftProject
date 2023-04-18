//
//  FinalMessage.swift
//  Block
//
//  Created by user237376 on 4/18/23.
//

import SwiftUI

struct FinalMessage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color(uiColor: UIColor(red: 1.00, green: 0.91, blue: 0.70, alpha: 1.0))
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 800, height: 500)
                        .foregroundColor(.white)
                        .overlay(content: {
                            HStack{
                                Button(action: {}, label: {
                                    Image("Pen")
                                        .resizable()
                                        .frame(width: 80, height: 160)
                                        .padding(.trailing,40)
                                })
                                VStack(spacing: 15){
                                    Text("Thank you very much for\n accompanying me on this adventure. ")
                                        .font(.system(size: 35))
                                        .frame(width: 600)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(.blue)
                                    Text("During this journey, we uncovered the realm of Ethereum... however, there are several other realms to explore, such as the realm of Polygon and the realm of Celo, for example. Will I see you there?")
                                        .font(.system(size: 33))
                                        .frame(width: 600)
                                        .multilineTextAlignment(.center)
                                        
                                    }
                            }
                        })
                   
                        Spacer()
                    
                        Image("Block")
                        .resizable()
                        .frame(width: 300,height: 250)
                        .padding()
                    
                        Spacer()
                    
                }
            }
        }         .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)

    }
}

struct FinalMessage_Previews: PreviewProvider {
    static var previews: some View {
        FinalMessage()
    }
}
