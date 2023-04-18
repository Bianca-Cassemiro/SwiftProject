//
//  MagicPen.swift
//  Block
//
//  Created by user237376 on 4/18/23.
//

import SwiftUI

struct MagicPen: View {
    @State var shouldShowMessage: Bool = false
    var body: some View {
        NavigationView {
            ZStack{
                Color(uiColor: UIColor(red: 0.70, green: 0.84, blue: 0.84, alpha: 1.00))
                .ignoresSafeArea()
                
                VStack{
                    RoundedRectangle(cornerRadius: 30)
                        .foregroundColor(.white)
                        .frame(width: 700,height: 200)
                        .overlay(content: {
                            Text("Block bought a magic pen, which has a very \n special power of encoding messages")
                                .font(.system(size: 35))
                                .multilineTextAlignment(.center)
                                .padding(.bottom)
                            NavigationLink(destination:Message(), isActive: $shouldShowMessage) {
                                                       EmptyView()
                                                   }
                            Button(action: {
                                self.shouldShowMessage = true
                            }, label: {
                                Image(systemName: "arrowshape.turn.up.forward.circle")
                                    .foregroundColor(Color(uiColor: UIColor(red: 0.19, green: 0.19, blue: 0.19, alpha: 0.70)))
                                    .font(.system(size: 50))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                    .padding()
                            })
                           
                        })
                    
                        
                    Circle()
                        .fill(.white)
                        .frame(width: 450)
                        .shadow(color: .gray,radius: 10)
                        .overlay(content: {
                            Image("RareItem")
                                .resizable()
                                .frame(width: 400, height: 400)
                        })
                    Image("BlockAndSeller")
                        .resizable()
                        .frame(width: 760, height: 320)
                        .padding()
                    Spacer()
                        
                }
                
            }
            
        }.navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
    }
}

struct MagicPen_Previews: PreviewProvider {
    static var previews: some View {
        MagicPen()
    }
}
