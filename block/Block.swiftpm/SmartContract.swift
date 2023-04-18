//
//  SmartContract.swift
//  Block
//
//  Created by user237376 on 4/13/23.
//

import SwiftUI

struct SmartContract: View {
    @State var shouldShowMagicPen: Bool = false
    var body: some View {
        NavigationView {
            ZStack{
                Color(uiColor: UIColor(red: 0.70, green: 0.84, blue: 0.84, alpha: 1.00))
                .ignoresSafeArea()
                VStack{
                    
                    Text("This is a pseudocode of a smart contract, on the Blockchain this is how transactions are done")
                        .frame(width: 600)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 34))
                    Image("SmartContract")
                        .resizable()
                        .frame(width: 690,height: 650)
                    
                    NavigationLink(destination:MagicPen(), isActive: $shouldShowMagicPen) {
                                               EmptyView()
                                           }
                    Button(action: {
                        self.shouldShowMagicPen = true
                    }, label: {
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 500, height: 90)
                            .foregroundColor(Color(uiColor: UIColor(red: 0.33, green: 0.84, blue: 0.50, alpha: 0.70)))
                            .shadow(radius: 10)
                            .overlay(content: {
                                Text("Click to make the payment")
                                    .font(.system(size: 36))
                                    .foregroundColor(.black)
                            })

                    }).padding()
                    Spacer()
                    
                }
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            
    }
}

struct SmartContract_Previews: PreviewProvider {
    static var previews: some View {
        SmartContract()
    }
}
