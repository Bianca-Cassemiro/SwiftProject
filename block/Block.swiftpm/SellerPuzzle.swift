//
//  SellerPuzzle.swift
//  Block
//
//  Created by user237376 on 4/13/23.
//

import SwiftUI

struct SellerPuzzle: View {
    @State var shouldShowSmartContract: Bool = false
    @State var tapCount: Int = 0
    var body: some View {
        NavigationView {
            ZStack{
                Color(uiColor: UIColor(red: 0.70, green: 0.84, blue: 0.84, alpha: 1.00))
                .ignoresSafeArea()
                VStack{
                    Spacer()
                    NavigationLink(destination:SmartContract(), isActive: $shouldShowSmartContract) {
                                               EmptyView()
                                           }
                    Button(action: {
                        if tapCount == 2 {
                              self.shouldShowSmartContract = true
                          } else {
                              tapCount += 1
                          }
                    }, label: {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 800,height: 750)
                            .shadow(color: .black,radius: 10)
                            .foregroundColor(Color(uiColor: UIColor(red: 0.70, green: 0.84, blue: 0.84, alpha: 1.00)))
                            .overlay(content: {
                                Text("Tap 3 times here to find out the smart contract")
                                    .font(.system(size: 33, design: .monospaced))
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                    
                            })
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
                          
                    }   .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.trailing,60)
                        .padding(.bottom)
                   
                    
                    }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
        }
    }


struct SellerPuzzle_Previews: PreviewProvider {
    static var previews: some View {
        SellerPuzzle()
    }
}
