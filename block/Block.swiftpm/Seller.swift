//
//  Seller.swift
//  Block
//
//  Created by user237376 on 4/13/23.
//

import SwiftUI

struct Seller: View {
    @State var shouldShowSellerPuzzle: Bool = false
    var body: some View {
        NavigationView {
            ZStack{
                Color(uiColor: UIColor(red: 0.70, green: 0.84, blue: 0.84, alpha: 1.00))
                    .ignoresSafeArea()
                VStack{
                    Spacer()
                    RoundedRectangle(cornerRadius: 40)
                        .fill(.white)
                        .frame(width: 630,height: 327)
                        .shadow(color: .gray,radius: 10)
                        .overlay(content: {
                            VStack{
                                
                                Text("Block met a seller who had an item he really wanted and they arranged to use a smart contract to facilitate the transaction")
                                    .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 1.0)))
                                    .font(.system(size: 35))
                                    .padding(.top,40)
                                    .frame(width: 500)
                                .multilineTextAlignment(.center)
                                
                                NavigationLink(destination:SellerPuzzle(), isActive: $shouldShowSellerPuzzle) {
                                                           EmptyView()
                                                       }
                                
                                Button(action: {
                                    self.shouldShowSellerPuzzle = true
                                }, label: {
                                    Image(systemName: "arrowshape.turn.up.forward.circle")
                                        .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 0.70)))
                                        .font(.system(size: 60))
                                        .frame(maxWidth: .infinity, alignment: .bottomTrailing)
                                        .padding(.trailing)
                                        .padding(.bottom)
                                })
                               
                            }
                        })
                    Spacer()
                 Image("BlockAndSeller")
                        .resizable()
                        .frame(width: 690, height: 300)
                    VStack(spacing: 10){
                     
                        Text("Blockcoins")
                            .font(.system(size: 40))
                        RoundedRectangle(cornerRadius: 40)
                            .fill(.white)
                            .shadow(color: .gray,radius: 10)
                            .frame(width: 200, height: 90)
                            
                            .overlay(content: {
                                HStack(spacing: 30){
                                    Image("Blockcoin")
                                        .resizable()
                                        .frame(width: 50,height: 50)
                                    Text("40")
                                        .font(.system(size: 40))
                                }
                            })
                          
                    }.frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing,60)
                        .padding(.bottom)
                   
                    
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
    }
}

struct Seller_Previews: PreviewProvider {
    static var previews: some View {
        Seller()
    }
}
