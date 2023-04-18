//
//  MathChallenge2.swift
//  Block
//
//  Created by user237376 on 4/13/23.
//

import SwiftUI

struct MathChallenge2: View {
    @State var shouldShowSeller: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.init(uiColor: UIColor(red: 0.97, green: 1.00, blue: 0.89, alpha: 1.00))
                .ignoresSafeArea()
                VStack{
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.white)
                        .frame(width: 700, height: 180)
                        .shadow(color:.gray,radius: 15, x: 5, y: 5)
                        .overlay(content: {
                            Text("Help Block solve these math problems so he can learn more about mining")
                                .font(.system(size: 36))
                                .frame(width: 600)
                                .multilineTextAlignment(.center)
                        })
                    Text("5 x 10 - 3 = ...")
                        .font(.system(size: 85))
                        .padding(.top,20)
                    
                    HStack(spacing: 80){
                        Circle()
                            .fill(.white)
                            .shadow(color: .gray,radius: 10,x: 5,y: 5)
                            .frame(width: 220)
                            .overlay(content: {
                                Text("46")
                                    .font(.system(size: 68))
                            })
                        NavigationLink(destination:Seller(), isActive: $shouldShowSeller) {
                                                   EmptyView()
                                               }
                        Button(action: {
                            self.shouldShowSeller = true
                        }, label: {
                            Circle()
                                .fill(.white)
                                .shadow(color: .gray,radius: 10,x: 5,y: 5)
                                .frame(width: 220)
                                .overlay(content: {
                                    Text("47")
                                        .font(.system(size: 68))
                                        .foregroundColor(.black)
                                })
                        })
                        
                    }
                    HStack(spacing: 150){
                        Circle()
                            .fill(.white)
                            .shadow(color: .gray,radius: 10,x: 5,y: 5)
                            .frame(width: 220)
                            .overlay(content: {
                                Text("35")
                                    .font(.system(size: 68))
                            })
                        Circle()
                            .fill(.white)
                            .shadow(color: .gray,radius: 10,x: 5,y: 5)
                            .frame(width: 220)
                            .overlay(content: {
                                Text("10")
                                    .font(.system(size: 68))
                            })
                    }.padding(.top,30)
                    Spacer()
                    HStack{
                        Image("Doubt")
                            .resizable()
                            .frame(width: 320,height: 330)
                            .padding(.leading,90)
                            .padding(.bottom,30)
                        Spacer()
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
                                
                        }
                            .padding(.trailing,90)
                            .padding(.top,30)
                    }
                    
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
    }
}

struct MathChallenge2_Previews: PreviewProvider {
    static var previews: some View {
        MathChallenge2()
    }
}
