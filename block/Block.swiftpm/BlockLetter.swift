//
//  BlockLetter.swift
//  Block
//
//  Created by user237376 on 4/11/23.
//

import SwiftUI

struct BlockLetter: View {
    @State var shouldShowMathChallenge1: Bool = false
    var body: some View {
        NavigationView {
            ZStack{
                Color(UIColor(red: 1.00, green: 0.82, blue: 0.82, alpha: 1.00))
                .ignoresSafeArea()
                .navigationBarBackButtonHidden(true)
                VStack{
                    Spacer()
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 650)
                        .shadow(color:.gray,radius: 10, x: 5, y: 5)
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 10.00)
                                .frame(width: 400, height: 500)
                                .foregroundColor(Color(uiColor: UIColor(red: 0.97, green: 1.00, blue: 0.89, alpha: 1.00)))
                                .border(.gray)
                                .overlay(content: {
                                    VStack{
                                        Text("It's almost a letter,")
                                            .frame(maxWidth: .infinity)
                                            .padding(30)
                                            .font(.system(size: 30))
                                        Text("We have: \n - Sender \n - Recipient \n - Amount of cryptocurrency transferred in one transactioin, per example")
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 30))
                                            .frame(width: 250)
                                        Text("With love, Block")
                                            .font(.system(size: 30))
                                            .padding(.top)
                                    }
                                })
                        })
                    Spacer()
                    HStack{
                        NavigationLink(destination:MathChallenge1(), isActive: $shouldShowMathChallenge1) {
                                                   EmptyView()
                                               }
                        Image("Block")
                            .resizable()
                            .frame(width: 380,height: 300)
                            .padding(.leading,80)
                        Spacer()
                        Button(action: {
                            self.shouldShowMathChallenge1 = true
                        }, label: {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.white)
                            .frame(width: 300,height: 110)
                            .shadow(color: .gray, radius: 15)
                            .padding(.trailing,80)
                            .padding(.top,30)
                            .overlay(content: {
                                HStack{
                                    Text("Continue")
                                        .font(.system(size: 34))
                                        .padding(10)
                                        .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 1.00)))
                                    
                                    Image(systemName: "arrowshape.turn.up.forward.circle")
                                        .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 0.70)))
                                        .font(.system(size: 50))
                                        .padding(.trailing,60)
                                }.padding(.top,25)
                            })
                        })
                    }.padding(.bottom, 100)
                    Spacer()
                }
            }
        }  .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
    }
}

struct BlockLetter_Previews: PreviewProvider {
    static var previews: some View {
        BlockLetter()
    }
}
