//
//  GenesisBlock.swift
//  Block
//
//  Created by Bia on 4/11/23.
//

import SwiftUI

struct GenesisBlock: View {
    @State var shouldShowSurprise:Bool = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(UIColor(red: 1.00, green: 0.82, blue: 0.82, alpha: 1.00))
                    .ignoresSafeArea()
                    .navigationBarBackButtonHidden(true)
                VStack{
                    Spacer()
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 600,height: 250)
                        .shadow(color: .gray, radius: 15)
                        .overlay(content: {
                            Text("The first block in the chain is called the Genesis Block, and it's where all our transactions begin")
                                .multilineTextAlignment(.center)
                                .font(.system(size: 30))
                                .frame(width: 500)
                        })
                    Image("blockchain")
                        .resizable()
                        .frame(width: 700,height: 260)
                        .padding(.top,100)
                    Spacer()
                    HStack{
                        Image("BlockHandUp")
                            .resizable()
                            .frame(width: 300,height: 250)
                            .padding(.leading,80)
                        Spacer()
                        Button(action: {
                            self.shouldShowSurprise = true
                        }, label: { RoundedRectangle(cornerRadius: 30)
                                .fill(.white)
                                .frame(width: 300,height: 110)
                                .shadow(color: .gray, radius: 15)
                                .padding(.trailing,80)
                                .padding(.top,30)
                                .overlay(content: {
                                    HStack{
                                       
                                            NavigationLink(destination:Surprise(), isActive: $shouldShowSurprise) {
                                                                       EmptyView()
                                                                   }
                                        Text("Continue")
                                            .font(.system(size: 34))
                                            .padding(10)
                                            .foregroundColor(.black)
                                       
                                        Image(systemName: "arrowshape.turn.up.forward.circle")
                                            .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 0.70)))
                                            .font(.system(size: 50))
                                            .padding(.trailing,60)
                                    }.padding(.top,25)
                                })})
                       
                    }
                    Spacer()
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

struct GenesisBlock_Previews: PreviewProvider {
    static var previews: some View {
        GenesisBlock()
    }
}
